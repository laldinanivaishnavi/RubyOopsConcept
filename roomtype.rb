class Roomtype
  @@room_types = []
  @@no_of_room_types=0

  def initialize(type, no, price, img, description, facilities)
    @room_type = type
    @room_no = no
    @room_price = price
    @room_img = img
    @room_desc = description
    @room_facilities = facilities
  end

  def roomtype_details()
    puts "Room Type - #@room_type"
    puts "Room Number - #@room_no"
    puts "Room Price - #@room_price"
    puts "Room Image - #@room_img"
    puts "Room Description - #@room_desc"
    puts "Room Facilities - #@room_facilities"
  end

  def self.room_types
    puts "Total number of room types we have =#{@@no_of_room_types}"
  end

  def self.add_room_type
    puts "In order to add a room type, please enter the details:"
    print "Enter Room Type: "
    room_type = gets.chomp

    print "Enter Room Number: "
    room_no = gets.chomp

    print "Enter Room Price: "
    room_price = gets.chomp

    print "Enter Room Image: "
    room_img = gets.chomp

    print "Enter Room Description: "
    room_desc = gets.chomp

    print "Enter Room Facilities: "
    room_facilities = gets.chomp

    roomtype = Roomtype.new(room_type, room_no, room_price, room_img, room_desc, room_facilities)
    @@room_types << roomtype
    puts "Room Type #{room_type} has been added successfully."
  end

  def self.delete_room_type
    print "Enter the name of the room type to delete: "
    room_type = gets.chomp

    roomtype = @@room_types.find { |rt| rt.instance_variable_get(:@room_type) == room_type }

    if roomtype
      @@room_types.delete(roomtype)
      puts "Room Type #{room_type} has been deleted successfully."
    else
      puts "No room type found with the given name."
    end
  end

  def self.search_room_type
    print "Enter the name of the room type to search: "
    room_type = gets.chomp

    found_room_types = @@room_types.select { |rt| rt.instance_variable_get(:@room_type).downcase.include?(room_type.downcase) }

    if found_room_types.length > 0
      puts "\nFound room types:"

      found_room_types.each do |rt|
        rt.roomtype_details
      end
    else
      puts "\nNo room types found with the given name."
    end
  end
  
  def modify_room_type()
    puts "\nEnter the room type to modify: "
    room_type = gets.chomp

    index = @@room_types.find_index { |type| type[:room_type] == room_type }

    if index != nil
      room = @@room_types[index]

      puts "\nEnter the new details for the room type #{room_type}:"

      print "Room Number (#{room[:room_no]}): "
      new_no = gets.chomp
      room[:room_no] = new_no unless new_no.strip.empty?

      print "Room Price (#{room[:room_price]}): "
      new_price = gets.chomp
      room[:room_price] = new_price unless new_price.strip.empty?

      print "Room Image (#{room[:room_img]}): "
      new_img = gets.chomp
      room[:room_img] = new_img unless new_img.strip.empty?

      print "Room Description (#{room[:room_desc]}): "
      new_desc = gets.chomp
      room[:room_desc] = new_desc unless new_desc.strip.empty?

      print "Room Facilities (#{room[:room_facilities]}): "
      new_fac = gets.chomp
      room[:room_facilities] = new_fac unless new_fac.strip.empty?

      puts "\nRoom type details updated:"
      roomtype_details(room)
    else
      puts "\nNo room type found with the given name."
    end
  end
end