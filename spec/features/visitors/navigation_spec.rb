# Feature: Navigation links
#   As a visitor
#   I want to see navigation links
#   So I can find home, sign in, or sign up
RSpec.feature 'Navigation links', :devise do
  # Scenario: View navigation links
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "home," "sign in," and "sign up"
  scenario 'view navigation links' do
    visit root_path
    # expect(page).to have_css "img[src*='logo.jpg']" # TODO Figure out how to locate image with digest/fingerprint in name
    expect(page).to have_content 'Contact Us'
    expect(page).to have_content 'About'
  end
end
