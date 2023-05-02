require './hotel.rb'
require './guest.rb'
require './room.rb'
require 'date'
$bid=0
$a=0,$c=0,$checkin=0,$checkout=0
class Booking
  @@no_of_bookings = 0
  @@bookings = []
  booking=Booking.new
  def add_booking()
    booking = {}

    puts "In Order to complete your booking please enter below details:"
    booking[:booking_id] =rand(100000..999999)
    $bid=booking[:booking_id]
    booking[:hotel_id] = $selected_hotel[:hotel_id]
    booking[:user_id] =$userid
    #booking[:guest_id] = guest[:guest_id]
    booking[:room_no] = $alloted_room[:room_no]

    booking[:booking_date] = DateTime.now.strftime("%d/%m/%Y %H:%M")

    puts "Enter Estimated Arrival Time (HH:MM AM/PM):"
    booking[:est_arrival_time] = gets.chomp

    puts "Enter Estimated Departure Time (HH:MM AM/PM):"
    booking[:est_departure_time] = gets.chomp

    puts "Enter Check-in Date (YYYY-MM-DD):"
    booking[:checkin_date]= gets.chomp.to_i
    $checkin=booking[:checkin_date]
    puts "Enter Check-out Date (YYYY-MM-DD):"
    booking[:checkout_date]= gets.chomp.to_i
    $checkout=booking[:checkout_date]
    puts "Enter Number of Adults:"
    booking[:num_of_adults]= gets.chomp.to_i
    $a=booking[:num_of_adults]
    puts "Enter Number of Children:"
    booking[:num_of_children]= gets.chomp.to_i
    $c=booking[:num_of_children]
    puts "Enter Special Concerns (if any):"
    booking[:special_concerns] = gets.chomp

    @@bookings << booking
    @@no_of_bookings += 1

    booking_details(booking)
  end

  def list_bookings()
    if (@@bookings.length > 0)
      puts "\n\nList of all bookings:"

      @@bookings.each do |booking|
        booking_details(booking)
      end
    else
      puts "\nCurrently we have no bookings!"
    end
  end

  def find_booking(id)
    if (@@bookings.length > 0)
      @@bookings.each do |booking|
        if (booking[:booking_id] == id)
          booking_details(booking)
          return booking
        end
      end

      puts "\nBooking with ID #{id} not found!"
    else
      puts "\nCurrently we have no bookings!"
    end
  end

  def booking_details(booking)
    puts "\nBooking ID - #{booking[:booking_id]}"
    puts "Hotel ID - #{booking[:hotel_id]}"
    puts "User ID - #{booking[:user_id]}"
    #puts "Guest ID - #{booking[:guest_id]}"
    puts "Room Number - #{booking[:room_no]}"
    puts "Booking Date - #{booking[:booking_date]}"
    puts "Estimated Arrival Time - #{booking[:est_arrival_time]}"
    puts "Estimated Departure Time - #{booking[:est_departure_time]}"
    puts "Check-in Date - #{booking[:checkin_date]}"
    puts "Check-out Date - #{booking[:checkout_date]}"
    puts "Number of Adults - #{booking[:num_of_adults]}"
    puts "Number of Children - #{booking[:num_of_children]}"
    puts "Special Concerns - #{booking[:special_concerns]}"
  end


def admin_booking(booking)
    while true
      puts "\n\nWhat do you want to do ?"
      puts "1. Add Booking"
      puts "2. List Bookings"
      puts "3. Find Booking by ID"
      #puts "4. Proceed for Bill"
      puts "4. Quit"
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        booking.add_booking
      when 2
        booking.list_bookings
      when 3
        booking.find_booking
      #when 4
      #  break
      when 4
        exit
      else
        puts "Invalid choice. Please try again."
      end
    end   
  end
end