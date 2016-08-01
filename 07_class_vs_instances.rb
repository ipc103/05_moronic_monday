# Is there set rule as to when we use class methods and class variables or is it up to the programmer? I understand that we would use for a collection that will track data for the entire class (i.e:  @@songs, or @@posts). and when to use "self" within the methods?

# Could you briefly go over the use of pry? Sometimes I'm confused about where to place the 'binding.pry' line and understanding what methods and variables are accessible, etc.
require 'pry'
class Dog
  attr_reader :name, :breed, :toys, :nose_power

  NUM_OF_LEGS = 4
  NUM_OF_EARS = 2
  ALL = []

  def self.all
    ALL
  end

  def initialize(name, breed, nose_power)
    @name = name
    @breed = breed
    @nose_power = nose_power
    ALL << self
  end

  def say_name_and_nose_power
    puts "My name is #{name} and my nose power is #{nose_power}"
  end

  def another_method
    binding.pry
  end

end

fido = Dog.new('Fido', 'Bloodhound', 10)
otis = Dog.new('Otis', 'Schnauzer', 8)
Dog.all
fido.nose_power #=> 10
fido.say_name_and_nose_power
otis.say_name_and_nose_power
