require 'spec_helper'

describe User do

	before do
		@user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
	end

	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
  	it { should respond_to(:password_confirmation) }
  	it { should respond_to(:authenticate) }

	it { should be_valid }

	describe "le nom n'est pas present" do
		before { @user.name = " " }
		it { should_not be_valid }
	end

	describe "le nom est trop long" do
	    before { @user.name = "a" * 51 }
	    it { should_not be_valid }
  	end

	describe "email invalide" do
		it "devrait etre invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
			             foo@bar_baz.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@user.email = invalid_address
				expect(@user).not_to be_valid
			end
		end
	end

	describe "email est valide" do
		it "devrait etre valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				expect(@user).to be_valid
			end
		end
	end

	# dans le cas ou le site est utilise par deux admins
	describe "email est deja utilisee" do
	    before do
	      	user_with_same_email = @user.dup
	      	user_with_same_email.save
	    end

	    it { should_not be_valid }
  	end

	describe "mdp pas present" do
		before do
			@user = User.new(name: "Example User", email: "user@example.com", password: " ", password_confirmation: " ")
		end
		it { should_not be_valid }
	end

	describe "mdp correspond pas" do
		before { @user.password_confirmation = "mismatch" }
		it { should_not be_valid }
	end

	describe "mdp trop court" do
		before { @user.password = @user.password_confirmation = "a" * 5 }
		it { should be_invalid }
	end

	describe "valeur de la methode authetification" do
		before { @user.save }
		let(:found_user) { User.find_by(email: @user.email) }

		describe "mdp valide" do
			it { should eq found_user.authenticate(@user.password) }
		end

		describe "mdp invalide" do
			let(:user_for_invalid_password) { found_user.authenticate("invalid") }

			it { should_not eq user_for_invalid_password }
			specify { expect(user_for_invalid_password).to be_false }
		end
	end

	describe "email avec majuscule et minuscule" do
		let(:mixed_case_email) { "Foo@ExAMPle.CoM" }

		it "devrait etre sauvee avec minuscule" do
			@user.email = mixed_case_email
			@user.save
			expect(@user.reload.email).to eq mixed_case_email.downcase
		end
	end
end