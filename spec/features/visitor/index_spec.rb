# Feature: Visitors home page
  # As a visitor
  # I want to visit the home page
  # so I can learn about Backlog
feature 'Home Page' do

# Scenario: Visit the home page
  # Given I am a visitor
  # When I visit the home page
  # Then I should see "Backlog"
  scenario 'Visit the home page' do
    visit root_path
    within 'h1' do
      expect(page).to have_content 'Welcome to Backlog'
    end
  end

# Scenario: Page must have copyright text
  # Given I am a visitor
  # When I visit the home page
  # Then I should see a copyright notice
  scenario "Home page must have a copyright notice" do
    visit root_path
    expect(page).to have_content 'Copyright'
    expect(page).to have_content 'All rights reserved'
  end

# Scenario: Access 'Sign-up' link
  # Given I am a visitor
  # When I visit the home page
  # Then I should see a link to sign up
  scenario "Access 'sign up' link" do
    visit root_path
    click_on 'Sign up'
    expect(page).to have_content 'Sign up'
  end

# Scenario: Access 'Sign-in' link
  # Given I am a returning registered user
  # When I visit the home page
  # Then I should see a link to log in
  scenario "Access 'log in' link" do
    visit root_path
    click_on 'Log in'
    expect(page).to have_content 'Log in'
  end

# Scenario: Access the 'About' page
  # Given I am a visitor
  # When I visit the home page
  # Then I should see an 'about' link
  scenario "Access 'about' link" do
    visit root_path
    click_on 'About'
    within 'h1' do
      expect(page).to have_content 'About Backlog'
    end
  end

# Scenario: Access the 'Contact' page
  # Given I am a visitor
  # When I visit the home page
  # Then I should see a 'contact' link
  scenario "Access 'contact' link" do
    visit root_path
    click_on 'Contact'
    within 'h1' do
      expect(page).to have_content 'Contact Backlog'
    end
  end

end
