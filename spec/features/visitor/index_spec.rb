# Feature: Visitors home page
  # As a visitor
  # I want to visit the home page
  # so I can learn about Backlog

feature 'Home Page' do

# Scenario: Visit the home page
  # Given I am a visirot
  # When I visit the home page
  # Then I should see "Backlog"
  scenario 'Visit the home page' do
    visit root_path
    expect(page).to have_content 'Backlog'
  end

# Scenario: Access 'Sign-up' link
  scenario "Access 'sign up' link" do
    visit root_path
    click_on 'Sign up'
    expect(page).to have_content 'Sign up'
  end

# Scenario: Access 'Sign-in' link
  scenario "Access 'log in' link" do
    visit root_path
    click_on 'Log in'
    expect(page).to have_content 'Log in'
  end

end
