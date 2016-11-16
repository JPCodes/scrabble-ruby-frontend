require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns a scrabble score') do
    visit('/')
    fill_in('word', :with => 'scrabble')
    click_button('Send')
    expect(page).to have_content('14')
  end
end
