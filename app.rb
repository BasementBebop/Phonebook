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

get('/contact/:id') do
  @id = params["id"]
  @contact_info = Contact.search_with_id(@id)
  #@phone_info = Phone.search_number_id(@id)
erb(:contact)
end

post('/contact/number_add') do
  @number = params['number']
  @type = params['type']
  @contact = @contact_info.name()
  Phone.new({:number => @number, :type => @type, :contact => @contact})
  redirect('/home')
end
