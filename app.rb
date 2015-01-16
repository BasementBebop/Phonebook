require('sinatra')
require('./lib/phonebook')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/home') do
  @list = Contact.all()
erb(:home)
end

post('/contact_add') do
  @name = params['name']
  @info = params['info']
  Contact.new({:name => @name, :info => @info })
  redirect('/home')
end



post('/clear_contacts') do
  Contact.clear()
  redirect('/home')
end
