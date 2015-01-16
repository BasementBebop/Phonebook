class Contact
  attr_reader(:name, :info)
  @@all = []

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @info = attributes[:info]
    @@all.push(self)
  end

  define_singleton_method(:all) do
    @@all
  end

  define_singleton_method(:clear) do
    @@all = []
  end

end

class Phone
  attr_reader(:number, :type)
  @@all_numbers = []

  define_method(:initialize) do |attributes|
    @number = attributes[:number]
    @type = attributes[:type]
    @@all_numbers.push(self)
  end

end
