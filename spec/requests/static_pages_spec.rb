require 'spec_helper'
include ApplicationHelper

describe "Static pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_content('Writer Assistant') }
		it { should have_title(full_title('')) }
		it { should_not have_title('| Home') }
	end

	describe "Help page" do
		before { visit help_path }

		it { should have_content('Help') }
		it { should have_title(full_title('Help')) }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_content('About') }
		it { should have_title(full_title('About')) }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_content('Contact') }
		it { should have_title(full_title('Contact')) }
	end

	describe "Chapter page" do
		before { visit chapters_path }
		it { should have_selector('h1',    text: "Listing chapters") }
		it { should have_content('Chapter') }
	end

	describe "Anecdote page" do
		before { visit anecdotes_path }
		it { should have_selector('h1',    text: "Listing anecdotes") }
		it { should have_content('Anecdote') }
	end

	describe "Scene page" do
		before { visit scenes_path }
		it { should have_selector('h1',    text: "Listing scenes") }
		it { should have_content('Scene') }
	end

	describe "Character page" do
		before { visit characters_path }
		it { should have_selector('h1',    text: "Listing characters") }
		it { should have_content('Character') }
	end

	describe "Theme page" do
		before { visit themes_path }
		it { should have_selector('h1',    text: "Listing themes") }
		it { should have_content('Theme') }
	end
end
