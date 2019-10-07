require "capybara/rspec"
require './app.rb'
Capybara.app = Game

feature 'start game' do
  scenario 'P1 puts name & game starts' do
    visit('/')
    fill_in :name, with: "Flavia"
    click_button "Submit"
    expect(page).to have_text("Hi Flavia! The game has started!
Choose: paper, rock or scissors.")
  end
end

feature 'P1 move' do
  scenario 'P1 chooses move' do
    visit('/game')
    fill_in :choice, with: "rock"
    click_button "Submit"
    expect(page).to have_text("Player 1 chose: rock")
  end
end

feature 'P2 move' do
  scenario 'P2 choses move' do
    visit('/game')
    fill_in :choice, with: "rock"
    click_button "Submit"
    expect(page).to have_text("Player 1 chose: rock")
  end
end
