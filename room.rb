class Room
    def initialize(roomno,roomtype,id,occupancy,status)
      @room_no=roomno
      @room_type=roomtype
      @hotel_id=id
      @room_occupancy=occupancy
      @room_status=status
    end
    def room_details()
      puts "Room No. - #@room_no"
      puts "Room Type - #@room_type"
      puts "Hotel Id - #@hotel_id"
      puts "Room Occupancy - #@room_occupancy"
      puts "Room Status - #@room_status"
    end
  end