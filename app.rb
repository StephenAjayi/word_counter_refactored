require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_counter.rb')



get('/') do
  erb(:index)
end

post('/result') do 
  phrase = params.fetch('phrase')
  @word_to_count = params.fetch('word_to_count')
  @result = phrase.word_counter(@word_to_count)
  erb(:result)
end
