# What is a variable?


name = 'Alice'

@name = 'Cliff'

@@name = 'Dillon'

$name = 'Andrew'

Name = 'Gentian'

class Person
  puts 'Defining person...'
  ALL = []

  def new_scope #can't be done...
    puts 'running new method...'
    # NEW_CLASS_CONSTANT = 'Whatever'
  end

  # def self.new_scope - broken
  #   NEW_CLASS_CONSTANT = 'Whatever'
  # end

end


puts Person::ALL
