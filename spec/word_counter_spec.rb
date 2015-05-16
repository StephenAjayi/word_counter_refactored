require('rspec')
require('word_counter')
require('pry')

describe('String#word_counter') do
  it('returns the right number of times a word appears') do
    expect("happy happy happy".word_counter("happy")).to(eq(3))
  end
  
  it('returns 0 when the word to count does not appear') do
    expect('happy happy happy'.word_counter("movie")).to(eq(0))
  end
  
  it('removes any characters other than letters and spaces from string') do
    expect("happy,*&%$ happy !!!!".word_counter("happy")).to(eq(2))
  end
end
