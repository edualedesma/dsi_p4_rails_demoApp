require 'spec_helper'

describe "StaticPages" do
    
  describe "Home page" do
    it "deberia tener el contenido 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
  
  describe "Help page" do
    it "deberia tener el contenido 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
  
  describe "About page" do
    it "deberia tener el contenido 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
  
end
