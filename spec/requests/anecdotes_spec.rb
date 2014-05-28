require 'spec_helper'

describe "Anecdotes" do

	subject { page }

	describe "Info correcte" do

		describe "Visite de Anecdote" do
			before { visit anecdotes_path }
			it { should_not have_selector('div.alert.alert-error') }
		end
	end

	describe "Info incorrecte" do

		describe "Formulaire submit" do
			before { visit new_anecdote_path }
			before { click_button "Create anecdote" }
			it { should have_content('error') }
		end
	end
end
