require 'spec_helper'

describe "Characters" do

	subject { page }

	describe "Info correcte" do

		describe "Visite de character" do
			before { visit characters_path }
			it { should_not have_selector('div.alert.alert-error') }
		end
	end

	describe "Info incorrecte" do

		describe "Formulaire submit" do
			before { visit new_character_path }
			before { click_button "Create character" }
			it { should have_content('error') }
		end
	end

end
