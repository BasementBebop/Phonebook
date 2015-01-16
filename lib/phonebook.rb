class Contact
  attr_reader(:name, :primary_number, :info)
  @@all = []

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @primary_number = attributes[:primary_number]
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
  attr_reader(:number, )
  @@all_numbers = []

  define_method(:initialize) do |attributes|
    @number = number
    @@all_numbers.push(self)
  end

end
