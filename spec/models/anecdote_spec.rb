require 'spec_helper'

describe Anecdote do

	before do
		@anecdote = Anecdote.new(subject: "Test", description:"Lorem ipsum", chapter_id:1)
	end

	subject { @anecdote }

	it { should respond_to(:subject) }
	it { should respond_to(:description) }
	it { should respond_to(:chapter_id) }

	it { should be_valid }

	describe "quand les champs ne sont pas presents" do

		describe "subject" do
			before { @anecdote.subject = nil }
			it { should_not be_valid } 
		end

		describe "description" do
			before { @anecdote.description = nil }
			it { should_not be_valid } 
		end

		describe "chapter_id" do
			before { @anecdote.chapter_id = nil }
			it { should_not be_valid } 
		end
	end
end
