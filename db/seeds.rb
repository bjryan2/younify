# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MatchBaseQuestion.create([
  {question: 'Would you be interested in a career in finance?'},
  {question: 'Does the public service sector interest you?'},
  {question: 'Are you willing to work for free?'},
  {question: 'Do you enjoy doing charity work?'},
  {question: 'Would you be interested in an engineering-related opportunity?'},
  {question: 'Is company culture important to you?'},
  {question: 'Do you mind commuting long distances to get to work?'},
  {question: 'Would you prefer to stay local for your job opportunity?'},
  {question: 'Do you like the start-up environment?'},
  {question: 'Would you return to the same company if offered the opportunity?'}
])