class Contact
  attr_reader(:name, :primary_number, :info)
  @@all = []

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @primary_number = attributes[:primary_number]
    @info = attributes[:info]
    @@all.push(self)
  end
  
end
