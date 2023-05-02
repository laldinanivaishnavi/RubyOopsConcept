$alloted_room=[]
class Room
  @@no_of_rooms = 0
  @@rooms = [{room_no:"1",room_type_id:"1",hotel_id:"1",room_occupancy:"Available",room_status:"Clean"}]
  def total_no_of_rooms()
    puts "Total number of Room: #{@@no_of_rooms}" 
  end
  
  def room_details(room)
    puts "\n\nRoom No. #{room[:room_no]} Details are:"
    puts "Room No. - #{room[:room_no]}"
    puts "Room Type Id - #{room[:room_type_id]}"
    puts "Hotel Id- #{room[:hotel_id]}"
    puts "Room Occupancy - #{room[:room_occupancy]}"  
    puts "Room Status - #{room[:room_status]}"
  end

  def add_room
    room = {}

    puts "In order to add room please enter the details"
    print "Enter Room No.: "
    room[:room_no] = gets.chomp

    print "Enter Room Type Id: "
    room[:room_type_id] = gets.chomp

    print "Enter Hotel Id: "
    room[:hotel_id] = gets.chomp

    print "Enter Room Occupancy: "
    room[:room_occupancy] = gets.chomp

    print "Enter Room Status: "
    room[:room_status] = gets.chomp

    @@rooms << room
    @@no_of_rooms += 1

    room_details(room)
    puts "\n\nRoom with Room No. #{room[:room_no]} has been added."
  end

  def total_no_of_rooms
    puts "Total number of Rooms: #{@@no_of_rooms}"
  end

  def list_rooms
    if @@rooms.length > 0
      puts "\n\nList of all Rooms:"

      @@rooms.each do |room|
        puts "\nRoom No.: #{room[:room_no]}"
        puts "Room Type Id: #{room[:room_type_id]}"
        puts "Hotel Id: #{room[:hotel_id]}"
        puts "Room Occupancy: #{room[:room_occupancy]}"
        puts "Room Status: #{room[:room_status]}"
      end
    else
      puts "\nCurrently no rooms available, Please try again later!"
    end
  end

  def delete_room
    print "Enter the Room No. of the Room to delete: "
    room_no = gets.chomp

    index = @@rooms.find_index { |room| room[:room_no] == room_no }

    if index != nil
      @@rooms.delete_at(index)
      @@no_of_rooms -= 1
      puts "Room with Room No. #{room_no} has been deleted."
    else
      puts "No Room found with Room No. #{room_no}."
    end
  end

  def search_room_by_no
    print "Enter the Room No. to search: "
    search_room = gets.chomp

    found_rooms = @@rooms.select { |room| room[:room_no].include?(search_room) }

    if found_rooms.length > 0
      puts "\n\nFound Room:"

      found_rooms.each do |room|
        puts "\nRoom No.: #{room[:room_no]}"
        puts "Room Type Id: #{room[:room_type_id]}"
        puts "Hotel Id: #{room[:hotel_id]}"
        puts "Room Occupancy: #{room[:room_occupancy]}"
        puts "Room Status: #{room[:room_status]}"
      end
    else
      puts "\n\nNo room found with the given Room No."
    end
  end

def allot_room_no
  print "Checking form the availability of selected room type: "

  available_rooms = @@rooms.select { |room| room[:room_occupancy] == "Available" }
  
  if available_rooms.length > 0 && $selected_room_type != nil
    found_rooms = available_rooms.select { |room| room[:room_type_id].include?($selected_room_type[:room_type_id]) }
    
    if found_rooms.length > 0
      $alloted_room= found_rooms.sample
      puts "\nCongratulations! you have been alloted Room No. #{$alloted_room[:room_no]}"
      room_details($alloted_room)
    else
      puts "\n\nNo rooms found with the selected room type."
    end
  else
    puts "\n\nWe can't proceed with the requested room type, kindly select another or try again later!"
  end
end

def user_room(object1)
    while true
      puts "\n\nType 1 to get your room alloted, Type 2 to Quit!"
      puts "1. Allot Room Number"
      puts "2. Quit"
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        object1.allot_room_no
        if $alloted_room!=nil
          break
        end
      when 2
        exit
      else
        puts "Invalid choice. Please try again."
      end
    end
  end

def admin_room(object1)
    while true
      puts "\n\nWhat do you want to do?"
      puts "1. Add Room"
      puts "2. Total Number Of Room"
      puts "3. List all Rooms"
      puts "4. Delete Room"
      puts "5. Search Room Number"
      puts "6. Proceed To Guest"
      puts "7. Quit"
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        object1.add_room
      when 2
        object1.total_no_of_rooms
      when 3
        object1.list_rooms
      when 4
        object1.delete_room
      when 5
        object1.search_room_by_no
      when 6
        break
      when 7
        exit
      else
        puts "Invalid choice. Please try again."
      end
    end
  end
end

