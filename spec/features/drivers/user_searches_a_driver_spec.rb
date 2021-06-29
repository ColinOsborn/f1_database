require 'rails_helper'

RSpec.feature 'User types in a drivers name to search for details' do
  scenario 'User enters Kimi Raikkonen and renders correct details' do
    visit '/'
    fill_in 'driver', with: 'Kimi Raikkonen'
    click_on 'Search'

    expect(page).to have_content 'Name: Kimi Raikkonen'
    expect(page).to have_content 'Nation: Finland'
    expect(page).to have_content 'Birth location:Espoo (Finland)'
    expect(page).to have_content 'Team: Alfa Romeo Racing'
    expect(page).to have_content 'About: Kimi-Matias Räikkönen born 17 October 1979), nicknamed "Iceman"'
  end

  scenario 'user enters a name that is not a drivers name' do
    visit '/'
    fill_in 'driver', with: 'colin osborn'
    click_on 'Search'

    expect(page).to have_content "Sorry! We didn't find that driver, please search again!"
  end
end
