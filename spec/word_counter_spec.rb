require('rspec')
require('pry')
require('word_counter')

describe('String#word_counter') do
  it('returns the right number of times a word appears') do
    expect("happy happy happy".word_counter("happy")).to(eq(3))
  end
end