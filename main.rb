require './login.rb'
require './hotel.rb'
require './roomtype.rb'
require './room.rb'
require './guest.rb'
require './booking.rb'
require './bill.rb'

login=Login.new
hotel=Hotel.new
roomtype=Roomtype.new
room=Room.new
guest=Guest.new
booking=Booking.new
bill=Bill.new
login.login(login)

if $user_type==0
    puts "You can't proceed further! Please Login"
    login.login(login)
elsif $user_type==1
    hotel.user_hotel(hotel)
elsif $user_type==2
    hotel.admin_hotel(hotel)
end

if $user_type==1 and $selected_hotel.length>0
    roomtype.user_roomtype(roomtype)
elsif $user_type==2
    roomtype.admin_roomtype(roomtype)
else
    if $user_type==1
        puts "You can't proceed further! Please Select Hotel"
        hotel.user_hotel(hotel)
    end
end

if $user_type==1 and $selected_room_type.length>0 and $selected_hotel.length>0
    room.user_room(room)
elsif $user_type==2
    room.admin_room(room)
else
    if $user_type==1
        puts "You can't proceed further! Please Select Room Type"
        roomtype.user_roomtype(roomtype)
    end
end

if $user_type==1 and $selected_room_type.length>0 and $selected_hotel.length>0 and $alloted_room!=nil
    guest.user_guest(guest)
elsif $user_type==2
    guest.admin_guest(guest)   
else
    if $user_type==1
        puts "You can't proceed further! Please get your room alloted"
        room.user_room(room)
    end
end

if $user_type==1 and $selected_room_type.length>0 and $selected_hotel.length>0 and $alloted_room!=nil and $no_of_guest>0
    booking.add_booking()
    bill.add_bill()
elsif $user_type==2
    booking.admin_booking(booking) 
else
    if $user_type==1
        puts "You can't proceed further! Please Add Guest"
        guest.user_guest(guest)
    end
end






