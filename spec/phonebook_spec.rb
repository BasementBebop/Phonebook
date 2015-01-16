require('rspec')
require('pry')
require('phonebook')

describe(Contact) do

  describe('#new') do
    it("initializes a new contact") do
      test_contact = Contact.new({:name => "Gam Gam", :primary_number => "1234567890", :info => "Grandma is the best" })
      expect(test_contact.name).to(eq("Gam Gam"))
      expect(test_contact.primary_number).to(eq("1234567890"))
      expect(test_contact.info).to(eq("Grandma is the best"))
    end
  end

end
