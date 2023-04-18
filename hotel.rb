class Hotel
    @@no_of_hotels=0
    @@hotels=[]

def total_no_of_hotels()
  puts "Total number of Hotels: #{@@no_of_hotels}" 
end

def hotel_details(hotel)
  puts "\n\n#{hotel[:hotel_name]} is in our list:"
  puts "Hotel Id - #{hotel[:hotel_id]}"
  puts "Hotel name - #{hotel[:hotel_name]}"
  puts "Hotel address - #{hotel[:hotel_address]}"
  puts "Hotel Postal Code - #{hotel[:hotel_postalcode]}"
  puts "Hotel City - #{hotel[:hotel_city]}"
  puts "Hotel Country - #{hotel[:hotel_country]}"
  puts "Hotel total number of rooms - #{hotel[:hotel_numofrooms]}"
  puts "Hotel Phone Number - #{hotel[:hotel_phoneno]}"
  puts "Hotel Star Rating - #{hotel[:hotel_starrating]}"    
end
def add_hotel()
  hotel = {}

  puts "In order to add hotel please enter the details"
  print "Enter Hotel Id: "
  hotel[:hotel_id] = gets.chomp

  print "Enter Hotel Name: "
  hotel[:hotel_name] = gets.chomp

  print "Enter Hotel Address: "
  hotel[:hotel_address] = gets.chomp

  print "Enter Hotel Postal Code: "
  hotel[:hotel_postalcode] = gets.chomp

  print "Enter City: "
  hotel[:hotel_city] = gets.chomp

  print "Enter Country: "
  hotel[:hotel_country] = gets.chomp

  print "Enter Hotel Number Of Rooms: "
  hotel[:hotel_numofrooms] = gets.chomp

  print "Enter Hotel Phone Number: "
  hotel[:hotel_phoneno] = gets.chomp

  print "Enter Hotel Starrating: "
  hotel[:hotel_starrating] = gets.chomp

  @@hotels << hotel
  @@no_of_hotels += 1

  hotel_details(hotel)
end

def list_hotels()
  if (@@hotels.length>0)
  puts "\n\nList of all hotels:"

  @@hotels.each do |hotel|
    puts "\nHotel Name: #{hotel[:hotel_name]}"
    puts "Hotel Address: #{hotel[:hotel_address]}"
    puts "Hotel Phone Number: #{hotel[:hotel_phoneno]}"
    puts "Hotel Starrating: #{hotel[:hotel_starrating]}"
  end
  else
    puts "\nCurrently no hotels available, Please try again later!"
  end
end

def delete_hotel()
  print "Enter the ID of the hotel to delete: "
  hotel_id = gets.chomp

  index = @@hotels.find_index { |hotel| hotel[:hotel_id] == hotel_id }

  if index != nil
    @@hotels.delete_at(index)
    @@no_of_hotels -= 1
    puts "Hotel with ID #{hotel_id} has been deleted."
  else
    puts "No hotel found with ID #{hotel_id}."
  end
end


def search_hotel_by_name()
  print "Enter the name of the hotel to search: "
  search_name = gets.chomp

  found_hotels = @@hotels.select { |hotel| hotel[:hotel_name].downcase.include?(search_name.downcase) }

  if found_hotels.length > 0
    puts "\n\nFound hotels:"

    found_hotels.each do |hotel|
      hotel_details(hotel)
    end
  else
    puts "\n\nNo hotels found with the given name."
  end
end

def select_hotel()
  print "Enter the ID of the hotel to select: "
  hotel_id = gets.chomp

  selected_hotel = @@hotels.find { |hotel| hotel[:hotel_id] == hotel_id }

  if selected_hotel != nil
    puts "\n\nSelected hotel:"
    hotel_details(selected_hotel)
  else
    puts "\n\nNo hotel found with ID #{hotel_id}."
  end
end


def start(object1)
  while true
    puts "\n\nWhat do you want to do?"
    puts "1. Add hotel"
    puts "2. Total Number Of Hotels"
    puts "3. List all hotels"
    puts "4. Search hotel by name"
    puts "5. Delete hotel by ID"
    puts "6. Select Hotel by ID"
    puts "7. Quit"

    choice = gets.chomp.to_i

    case choice
    when 1
      object1.add_hotel
    when 2
      object1.total_no_of_hotels
    when 3
      object1.list_hotels
    when 4
      object1.search_hotel_by_name
    when 5
      object1.delete_hotel
    when 6
      object1.select_hotel
    when 7
      break
    else
      puts "Invalid choice. Please try again."
    end
  end
end
end
object1=Hotel.new
object1.start(object1)
