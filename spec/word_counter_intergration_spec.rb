require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application 
set(:show_exceptions, false)

describe('the counting of words process', {:type => :feature}) do
  it('process the user entry string an retuns the number of time the word to count appears ') do 
    visit('/')
    fill_in('phrase', :with => "happy happy happy")
    fill_in('word_to_count', :with => "happy")
    click_button("Count!")
    expect(page).to have_content("3 times")
  end
end