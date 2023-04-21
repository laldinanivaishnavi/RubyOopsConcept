require './hotel.rb'
$selected_room_type=[]
class Roomtype
    @@no_of_room_types=0
    @@room_types=[]

def total_no_of_room_types()
  puts "Total number of Room Types: #{@@no_of_room_types}" 
end

def room_type_details(roomtype)
  puts "\n\n#{roomtype[:room_type_id]} is in our list:"
  puts "Room Type Id - #{roomtype[:room_type_id]}"
  puts "Hotel Id: #{roomtype[:hotel_id]}"
  puts "Room Image - #{roomtype[:room_img]}"
  puts "Room Description - #{roomtype[:room_desc]}"
  puts "Room Facilites - #{roomtype[:room_facilities]}"   
end
def add_room_type()
  roomtype={}

  puts "In order to add room type please enter the details"
  print "Enter Room Type Id: "
  roomtype[:room_type_id] = gets.chomp

  print "Enter Hotel Id: "
  roomtype[:hotel_id] = gets.chomp

  print "Enter Room Image: "
  roomtype[:room_img] = gets.chomp

  print "Enter Room Description: "
  roomtype[:room_desc] = gets.chomp

  print "Enter Room Facilities: "
  roomtype[:room_facilities] = gets.chomp

  @@room_types << roomtype
  @@no_of_room_types += 1

  room_type_details(roomtype)
end

def list_room_types()
  if (@@room_types.length>0 && $selected_hotel != nil)
  puts "\n\nList of all Room Types:"
  found_room_types=@@room_types.select { |roomtype| roomtype[:hotel_id].include?($selected_hotel[:hotel_id])}
  found_room_types.each do |roomtype|
    puts "\nRoom Type Id: #{roomtype[:room_type_id]}"
    puts "Room Image: #{roomtype[:room_img]}"
    puts "Room Description: #{roomtype[:room_desc]}"
    puts "Room Facilities: #{roomtype[:room_facilities]}"
    end
  else
    puts "\nCurrently no room types available, Please try again later!"
  end
end

def delete_room_type()
  print "Enter the ID of the Room Type to delete: "
  room_type_id = gets.chomp

  index = @@room_types.find_index { |roomtype| roomtype[:room_type_id] == room_type_id}

  if index != nil
    @@room_types.delete_at(index)
    @@no_of_room_types -= 1
    puts "Room type with ID #{room_type_id} has been deleted."
  else
    puts "No Room Type found with ID #{room_type_id}."
  end
end


def search_room_type_by_id()
  print "Enter the ID of room type to search: "
  search_room_type = gets.chomp

  found_room_type = @@room_types.select { |roomtype| roomtype[:room_type_id].include?(search_room_type) }

  if found_room_type.length > 0
    puts "\n\nFound Room Type:"

    found_room_type.each do |roomtype|
      room_type_details(roomtype)
    end
  else
    puts "\n\nNo room type found with the given ID."
  end
end

def select_room_type()
  print "Enter the ID of the room type to select: "
  room_type_id = gets.chomp

  $selected_room_type= @@room_types.find { |roomtype| roomtype[:room_type_id]== room_type_id }

  if $selected_room_type != nil
    puts "\n\nSelected room type is:"
    room_type_details($selected_room_type)
  else
    puts "\n\nNo room type found with ID #{room_type_id}."
  end
end


def start(object1)
  while true
    puts "\n\nWhat do you want to do?"
    puts "1. Add Room Type"
    puts "2. Total Number Of Room Types"
    puts "3. List all Room Types"
    puts "4. Search room type by ID"
    puts "5. Delete Room Type by ID"
    puts "6. Select Room Type by ID"
    puts "7. Quit"

    choice = gets.chomp.to_i

    case choice
    when 1
      object1.add_room_type
    when 2
      object1.total_no_of_room_types
    when 3
      object1.list_room_types
    when 4
      object1.search_room_type_by_id
    when 5
      object1.delete_room_type
    when 6
      object1.select_room_type
      if $selected_room_type!=nil
        break
      else
        puts "Enter valid ID"
        object1.select_room_type
      end
    when 7
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
end
end
object1=Roomtype.new
object1.start(object1)
