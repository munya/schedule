# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)            

(1..10).each do |i|
  Reader.create(name: Faker::Name.name, ravity: rand(10))           
  Subject.create(name: Faker::Lorem.words(2).to_sentence)           
  Group.create(name: "Group + #{i}")           
  Classroom.create(name: "Classroom: #{i}", capacity: rand(70))           
end
                                
(1..5).each do |week_num|
  Lesson.create([{week_num: week_num, start_time: "8:00", end_time: "9:20"},           
                 {week_num: week_num, start_time: "9:40", end_time: "11:00"},           
                 {week_num: week_num, start_time: "11:10", end_time: "12:30"},           
                 {week_num: week_num, start_time: "12:50", end_time: "14:10"},           
                 {week_num: week_num, start_time: "14:20", end_time: "15:40"},
                 {week_num: week_num, start_time: "16:00", end_time: "17:20"}])           
end
             
minutes = (1..24).map{|i| i*80*(rand(3)+1)}

(1..10).each do |i|
  reader = Reader.find(i)
  subject = Subject.find(i)
  group = Group.find(i)        
  GroupReaderSubject.create(reader: reader, group: group, subject: subject, minutes: minutes[rand(23)+1])
end 

