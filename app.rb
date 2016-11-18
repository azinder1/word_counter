require('sinatra')
require('sinatra/reloader')
require('./lib/word_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/word_count') do
  @result = params.fetch('sentence').word_counter(params.fetch('word'))
  erb(:output)
end
