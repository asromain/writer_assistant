require 'spec_helper'

describe Theme do

	before do
		@theme = Theme.new(name:"Romance", anecdote_id:1)
	end

	subject { @theme }

	it { should respond_to(:name) }
	it { should respond_to(:anecdote_id) }

	it { should be_valid }

	describe "quand les champs ne sont pas presents" do

		describe "name" do
			before { @theme.name = nil }
			it { should_not be_valid } 
		end

		describe "anecdote_id" do
			before { @theme.anecdote_id = nil }
			it { should_not be_valid } 
		end
	end
end