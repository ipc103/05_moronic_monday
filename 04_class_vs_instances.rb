# Sometimes I'm confused about which attributes need attr_readers or accessors and which don't. If you have a class method that counts the number of instances, does that need an attr_reader?

class Dog

  attr_reader :name, :toys

  def self.class_name
    'Dog is the name of this class'
  end

  def initialize(name)
    @name = name
    @toys = []
  end

  # def name
  #   @name
  # end
  #

  # def toys
  #   @toys
  # end

  def name=(name)
    puts 'The new name is #{name}'
    @name = name
  end

  def add_toy(toy_name)
    toys << toy_name
  end

end

fido = Dog.new
fido.name = 'Fido'
fido.name
Dog.class_name
#=> 'Dog is the name of this class'
