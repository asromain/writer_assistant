require 'spec_helper'

describe "Chapters" do

	subject { page }

	describe "Info correcte" do

		describe "Visite de chapter" do
			before { visit chapters_path }
			it { should_not have_selector('div.alert.alert-error') }
		end
	end

	describe "Info incorrecte" do

		describe "Formulaire submit" do
			before { visit new_chapter_path }
			before { click_button "Create chapter" }
			it { should have_content('error') }
		end
	end
end
