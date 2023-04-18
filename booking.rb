class Booking
    def initialize(id,hid,gid,no,bookingdate,arrival,departure,numofadults,numofchild,concern)
      @booking_id=id
      @hotel_id=hid
      @guest_id=gid
      @room_no=no
      @booking_date=bookingdate
      @estarrival=arrival
      @estdeparture=departure
      @numofadults=numofadults
      @numofchild=numofchild
      @specialconcern=concern
    end
    def booking_details()
      puts "Booking Id - #@booking_id"
      puts "Hotel Id - #@hotel_id"
      puts "Guest Id - #@guest_id"
      puts "Room Number - #@room_no"
      puts "Booking Date - #@booking_date"
      puts "Estimated Arrival - #@estarrival"
      puts "Estimated Departure - #@estdeparture"
      puts "Number Of Adults - #@numofadults"
      puts "Number Of Child - #@numofchild"
      puts "Special Concern - #@specialconcern"
    end
  end