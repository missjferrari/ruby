class Dog

    attr_accessor :name, :owner_name

    def bark
        return "Arf! Arf!"
    end
end

my_dog = Dog.new
my_dog.name = "Artie"
dogname = my_dog.name
my_dog.owner_name = "My Parents'"
ownername = my_dog.owner_name
puts "#{ownername} dog, #{dogname} is a bit of an embarring arsehole!  Wherever we go, he won't stop saying #{my_dog.bark}"

my_dog.inspect