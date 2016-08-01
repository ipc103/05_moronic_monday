# In our text editors, can you go over how to create a new folder with files that should link to each other (like when we had the separation of concerns lecture)? For example, creating a new folder that will contain my lib/xx.rb files linking to run.rb file, etc.

require_relative '../lib/dog.rb'
require_relative '../lib/person.rb'
require 'json'

person = Person.new
puts 'Created Person'
dog = Dog.new
puts 'Created Dog'
