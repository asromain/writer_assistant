require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do
		it "devrait avoir contenu 'Writer Assitant'" do
			visit '/static_pages/home'
			expect(page).to have_content('Writer Assistant')
		end
		it "devrait avoir un titre 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("Writer Assistant")
		end
		it "devrait pas avoir '| Home'" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end

	describe "Help page" do
		it "devrait avoir contenu 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		it "devrait avoir un titre 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("Writer Assistant | Help")
		end
	end

	describe "About page" do
		it "devrait avoir contenu 'About'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end
		it "devrait avoir un titre 'About'" do
			visit '/static_pages/about'
			expect(page).to have_title("Writer Assistant | About")
		end
	end

end
