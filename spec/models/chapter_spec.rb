require 'spec_helper'

describe Chapter do

	before do
		@chapter = Chapter.new(number:1, title:"En balade")
	end

	subject { @chapter }

	it { should respond_to(:number) }
	it { should respond_to(:title) }

	it { should be_valid }

	describe "quand les champs ne sont pas presents" do

		describe "number" do
			before { @chapter.number = nil }
			it { should_not be_valid } 
		end

		describe "title" do
			before { @chapter.title = nil }
			it { should_not be_valid } 
		end

	end

end