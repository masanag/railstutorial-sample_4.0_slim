require 'spec_helper'

describe 'StaticPages' do
  describe 'Home page' do
    before { visit static_pages_home_path }
    it "should have the content 'Sample App'" do
      expect(page).to have_content 'Sample App'
    end

    it 'should have the right title' do
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe 'Help page' do
    before { visit static_pages_help_path }
    it "should have the content 'Help'" do
      expect(page).to have_content 'Help'
    end

    it 'should have the right title' do
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe 'About page' do
    before { visit static_pages_about_path }
    it "should have the content 'About Us'" do
      expect(page).to have_content 'About Us'
    end

    it 'should have the right title' do
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
    end
  end
end
