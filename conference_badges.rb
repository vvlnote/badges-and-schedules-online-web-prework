# Write your code here.

def badge_maker(name)
  "Hello, my name is " + name + "."
end

def batch_badge_creator(attendees)
  arrMessage = []
  attendees.each {|attendee| arrMessage.push(badge_maker(attendee))}
  arrMessage
end

def assign_rooms(attendees)
  arrMessage = []
  attendees.each_index{|x| arrMessage.push("Hello, #{attendees[x]}! You'll be assigned to room #{x+1}!")}
  arrMessage
end

def printer(attendees)
  arr_badges = batch_badge_creator(attendees)
  arr_room_assignment = assign_rooms(attendees)
  for i in 0...attendees.size do
    puts "#{arr_badges[i]}"
  end
  for i in 0...attendees.size do
    puts "#{arr_room_assignment[i]}"
  end
end
