require 'spec_helper'
require '././app.rb'
RSpec.feature 'lost', :type => :feature do
  scenario 'the player has lost' do
      sign_in_and_play
      click_button 'Scissors'
      @choice = "Scissors"
     expect(page).to have_text "Bob has played Scissors"
  end
end
