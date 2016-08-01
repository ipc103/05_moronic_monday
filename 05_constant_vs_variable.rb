# What is the difference between class constant and class variable?

class Person

  @@class_name = 'Person'
  CLASS_NAME = 'Person'

  ALL = []

  def self.change_class_name
    @@class_name = 'Something else'
  end

end


puts Person::CLASS_NAME
