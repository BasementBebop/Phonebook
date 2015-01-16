class Contact
  attr_reader(:name, :info, :id)
  @@all = []

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @info = attributes[:info]
    @id = @@all.length() + 1
    @@all.push(self)
  end

  define_singleton_method(:all) do
    @@all
  end

  define_singleton_method(:clear) do
    @@all = []
  end

  define_singleton_method(:search_with_id) do |id|
    contact_to_return = ""
    @@all.each do |contact|
      if(contact.id() == id.to_i)
        contact_to_return = contact
      end
    end
    contact_to_return
  end



end

class Phone
  attr_reader(:number, :type, :id)
  @@all_numbers = []

  define_method(:initialize) do |attributes|
    @number = attributes[:number]
    @type = attributes[:type]
    @id = @contact_info.id()
    @@all_numbers.push(self)
  end

  define_method(:number) do
    @number
  end

  define_singleton_method(:search_number_id) do |id|
    number_to_return = ""
    @@all_numbers.each do |number|
      if(number.id() == id.to_i)
        number_to_return = number
      end
    end
    number_to_return
  end

end
