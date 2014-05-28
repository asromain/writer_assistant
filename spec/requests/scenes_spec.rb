require 'spec_helper'

describe "Scenes" do

	subject { page }

	describe "Info correcte" do

		describe "Visite de Scene" do
			before { visit scenes_path }
			it { should_not have_selector('div.alert.alert-error') }
		end
	end

	describe "Info incorrecte" do

		describe "Formulaire submit" do
			before { visit new_scene_path }
			before { click_button "Create scene" }
			it { should have_content('error') }
		end
	end

end
