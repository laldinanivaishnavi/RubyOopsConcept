require './booking.rb'
$no_of_guest=0
class Guest
  #attr_accessor :bid
  @@guests=[]
  guest=Guest.new
  def total_no_of_guests()
  puts "Total number of Guests: #{$no_of_guest}" 
  end

  def guest_details(guest)
    puts "Booking Id - #{guest[:booking_id]}"
    puts "Guest Name - #{guest[:guest_name]}"
    puts "Guest Age - #{guest[:guest_age]}"
    puts "Guest Gender - #{guest[:guest_gender]}"
    puts "Guest Phone Number - #{guest[:guest_phoneno]}"
    puts "Guest Aadhar Number - #{guest[:guest_aadharno]}"  
  end

def add_guest()
  guest={}

  guest[:booking_id] = $bid#"Booking Id will be generated shortly"
  
  puts "Enter Guest Name:"
  guest[:guest_name] = gets.chomp
  
  puts "Enter Guest Age:"
  guest[:guest_age] = gets.chomp.to_i
  
  puts "Enter Guest Gender:"
  guest[:guest_gender] = gets.chomp
  
  puts "Enter Guest Phone Number:"
  guest[:guest_phoneno] = gets.chomp
  
  puts "Enter Guest Aadhar No.:"
  guest[:guest_aadharno] = gets.chomp.to_i

  @@guests << guest
  $no_of_guest += 1

  guest_details(guest)
end

def list_guests()
  if (@@guests.length>0)
  puts "\n\nList of all guests:"

  @@guests.each do |guest|
    #puts "\nGuest Id - #{guest[:guest_id]}"
    puts "\nBooking Id - #{guest[:booking_id]}"
    puts "Guest Name - #{guest[:guest_name]}"
    puts "Guest Age - #{guest[:guest_age]}"
    puts "Guest Gender - #{guest[:guest_gender]}"
    puts "Guest Phone Number - #{guest[:guest_phoneno]}"
    puts "Guest Aadhar Number - #{guest[:guest_aadharno]}"
  end
  else
    puts "\nCurrently we have no guests!, Please add guest"
  end
end
  
#iff $user_type==1
  def user_guest(guest)
    while true
      puts "\n\nAdd the guest details:"
      puts "1. Add Guest"
      puts "2. List of Guests"
      puts "3. Total number of Guests"
      puts "4. Proceed for Booking"
      puts "5. Quit"
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        guest.add_guest
      when 2
        guest.list_guests
      when 3
        guest.total_no_of_guests
      when 4
        if @@guests.length>0
          break
        else
          puts "Please Add Guest Details, in order to proceed for booking"
          guest.add_guest
        end
      when 5
        exit
      else
        puts "Invalid choice. Please try again."
      end
    end
  end

  def admin_guest(guest)
    while true
      puts "\n\nWhat you want to do:"
      puts "1. Add Guest"
      puts "2. List of Guests"
      puts "3. Total number of Guests"
      puts "4. Proceed for Booking"
      puts "5. Quit"
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        guest.add_guest
      when 2
        guest.list_guests
      when 3
        guest.total_no_of_guests
      when 4
        break
      when 5
        exit
      else
        puts "Invalid choice. Please try again."
      end
    end
  end
end
#end
#guest=Guest.new
#guest.start(guest)