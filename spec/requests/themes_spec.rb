require 'spec_helper'

describe "Themes" do

	subject { page }

	describe "Info correcte" do

		describe "Visite de Anecdote" do
			before { visit themes_path }
			it { should_not have_selector('div.alert.alert-error') }
		end
	end

	describe "Info incorrecte" do

		describe "Formulaire submit" do
			before { visit new_theme_path }
			before { click_button "Create theme" }
			it { should have_content('error') }
		end
	end

end
