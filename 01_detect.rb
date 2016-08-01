# I am unable to break down the syntax for .detect that lets you do it in one line and i always get it wrong

names = ["Ian", "Logan", "Alex", "Andrew"]

name = names.detect { |name| name.length == 5 }

name #=> 'Logan'

people = [{name: 'Ian'}, {name: 'Logan'}]

person = people.detect { |person| person[:name].length == 5 }

person #=> {name: 'Logan'}
