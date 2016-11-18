require('sinatra')
require('sinatra/reloader')
require('./lib/word_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/output') do
  @result = params.fetch('').word_count()
  erb(:title)
end
