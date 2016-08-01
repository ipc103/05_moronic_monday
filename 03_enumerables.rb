# Can we talk about return values of enumerables? I know what .collect and .each returns, but the other enumerables (.select, .find, .first, etc) seem to return either the items or an array of the items, and I'm never sure which. Is there an easy way to remember what they will return?

people = [{name: 'Ian'}, {name: 'Logan'}, {name: 'Sophie'}, {name: 'JJ'}, {name: 'Alice'}, {name: 'Daniella'}]

# What do we want to return?

# each
# don't care/ original array
people.each do |person|
  puts person[:name]
end

# each_with_index

# collect / map / collect!
# return a new array of the return values of each pass through the block
# use it when I want to return a new array
people.collect do |person|
  person[:name].upcase
end
#=> ['IAN', 'LOGAN', "SOPHIE", etc.]

# select
### WHen I want to return an array where each item in the array returned true for some condition
people.select {|person| person[:name].length >= 5}

# detect/ find

### WHen I want to the first item that returns true
people.detect {|person| person[:name].length >= 5}

# any?
## Do any of the items match a true/false condition?
people.any? {|person| person[:name].length >= 5}

people.any? {|person| person[:name] == 'Alexander Hamilton'}
# false

# none?
## Do none of the items match a true/false condition?
people.none? {|person| person[:name].length >= 5}
#=> false

# all?
## Does every item in the array meet a condition?
people.all? {|person| person[:name].length >= 5}
#=> false

# include?
names = ['Alexander Hamilton']
people.include?('Alexander Hamilton')
#=> true

# each_with_object
## when I want to return a hash
people_hash = people.each_with_object({names: []}) do |person, hash|
  # hash[:names] ||= []
  hash[:names] << person[:name]
end

people_hash #=> {names: ['Ian', 'Logan', etc.]}

# delete_if
