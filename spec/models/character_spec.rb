require 'spec_helper'

describe Character do

	before do
		@character = Character.new(name:"Robert", role:"Pecheur", scene_id:1)
	end

	subject { @character }

	it { should respond_to(:name) }
	it { should respond_to(:role) }
	it { should respond_to(:scene_id) }

	it { should be_valid }

	describe "quand les champs ne sont pas presents" do

		describe "name" do
			before { @character.name = nil }
			it { should_not be_valid } 
		end

		describe "role" do
			before { @character.role = nil }
			it { should_not be_valid } 
		end
	end
end
