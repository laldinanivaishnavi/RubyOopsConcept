class Owner
  def initialize(id,hid,ownedhotels,noofhotels,firstname,lastname,int,phoneno,email)
    @owner_id=id
    @hotel_id=hid
    @owned_hotels=ownedhotels
    @numofhotels=noofhotels
    @owner_firstname=firstname
    @owner_lastname=lastname
    @owner_age=int
    @owner_phoneno=phoneno
    @owner_email=email
  end
  def owner_details()
    puts "Owner Id - #@owner_id"
    puts "Hotel Id - #@hotel_id"
    puts "Hotels he owned - #@owned_hotels"
    puts "Number of hotels - #@numofhotels"
    puts "FirstName - #@owner_firstname"
    puts "LastName - #@owner_lastname"
    puts "Age - #@owner_age"
    puts "Owner Phone Number - #@owner_phoneno"
    puts "Owner email - #@owner_email"
  end
end



class Hotel
      @@no_of_hotels=0
  def initialize(id,name,address,postalcode,city,country,numofrooms,phoneno,starrating)
      @@no_of_hotels+=1
      @hotel_id=id
      @hotel_name=name
      @hotel_address=address
      @hotel_postalcode=postalcode
      @hotel_city=city
      @hotel_country=countrygit config --global user.name "YOUR_USERNAME"
      @hotel_numofrooms=numofrooms
      @hotel_phoneno=phoneno
      @hotel_starrating=starrating
   end
  # def addHotel
  #  puts "Hotel Added Successfully"
  # end
  def total_no_of_hotels()
    puts "Total number of Hotels: #@@no_of_hotels" 
  end
  def hotel_details()
    puts "Hotel Id - #@hotel_id"
    puts "Hotel name - #@hotel_name"
    puts "Hotel address - #@hotel_address"
    puts "Hotel Postal Code - #@hotel_postalcode"
    puts "Hotel City - #@hotel_city"
    puts "Hotel Country - #@hotel_country"
    puts "Hotel total number of rooms - #@hotel_numofrooms"
    puts "Hotel Phone Number - #@hotel_phoneno"
    puts "Hotel Star Rating - #@hotel_starrating"
    end
end

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

class Roomtype
  def initialize(type,no,price,img,description,facilities)
    @room_type=type
    @room_no=no
    @room_price=price
    @room_img=img
    @room_desc=description
    @room_facilities=facilities
  end
  def roomtype_details()
    puts "Room Type - #@room_type"
    puts "Room Number - #@room_no"
    puts "Room Price - #@room_price"
    puts "Room Image - #@room_img"
    puts "Room Description - #@room_desc"
    puts "Room Facilities - #@room_facilities"
  end
end

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

class Guest
  def initialize(id,bid,title,firstname,lastname,dob,gender,phoneno,email,password,aadharno,address,postalcode,city,country)
    @guest_id=id
    @booking_id=bid
    @guest_title=title
    @guest_firstname=firstname
    @guest_lastname=lastname
    @guest_dob=dob
    @guest_gender=gender
    @guest_phoneno=phoneno
    @guest_email=email
    @guest_password=password
    @guest_aadharno=aadharno
    @guest_address=address
    @guest_postalcode=postalcode
    @guest_city=city
    @guest_country=country
  end
  def guest_details()
    puts "Guest Id - #@guest_id"
    puts "Booking Id - #@booking_id"
    puts "Guest Title- #@guest_title"
    puts "Guest FirstName - #@guest_firstname"
    puts "Guest LastName - #@guest_lastname"
    puts "Guest DOB - #@guest_dob"
    puts "Guest Gender - #@guest_gender"
    puts "Guest Phone Number - #@guest_phoneno"
    puts "Guest EmailId- #@guest_email"
    puts "Guest Password - #@guest_password"
    puts "Guest Aadhar No.- #@guest_aadharno"
    puts "Guest Address- #@guest_address"
    puts "Guest PostalCode - #@guest_postalcode"
    puts "Guest City - #@guest_city"
    puts "Guest Country - #@guest_country"
  end
end

class Bill
  def initialize(invoice,bid,gid,roomcharge,roomservicecharge,restcharge,barcharge,misccharge,latecharge,totalcharge,paymentdate,paymentmode,creditcardno,expiredate,txnid,txnstatus)
    @bill_invoiceno=invoice
    @booking_id=bid
    @guest_id=gid
    @roomcharge=roomcharge
    @roomservice_charges=roomservicecharge
    @restaurant_charges=restcharge
    @bar_charges=barcharge
    @misc_charges=misccharge
    @iflatecheckout_charges=latecharge
    @total_charges=totalcharge
    @payment_date=paymentdate
    @payment_mode=paymentmode
    @creditcard_no=creditcardno
    @expire_date=expiredate
    @transaction_id=txnid
    @transaction_status=txnstatus
  end
  def bill_details()
    puts "Bill Invoice No. - #@bill_invoiceno"
    puts "Booking Id - #@booking_id"
    puts "Guest Id- #@guest_id"
    puts "Room Charge - #@roomcharge"
    puts "Room Service Charges - #@roomservice_charges"
    puts "Restaurant Charges - #@restaurant_charges"
    puts "Bar Charges - #@bar_charges"
    puts "Miscellaneous Charges - #@misc_charges"
    puts "If Late Checkout Charges- #@iflatecheckout_charges"
    puts "Total Bill Charges- #@total_charges"
    puts "Payment Date - #@payment_date"
    puts "Payment Mode - #@payment_mode"
    puts "Credit Card Number - #@creditcard_no"
    puts "Expire Date - #@expire_date"
    puts "Transaction Id - #@transaction_id"
    puts "Transaction Status - #@transaction_status"
  end
end

class Employee
  def initialize(empid,hid,roleid,firstname,lastname,dob,gender,phoneno,email,password,salary)
    @emp_id=empid
    @hotel_id=hid
    @role_id=roleid
    @emp_firstname=firstname
    @emp_lastname=lastname
    @emp_dob=dob
    @emp_gender=gender
    @emp_phoneno=phoneno
    @emp_email=email
    @emp_password=password
    @emp_salary=salary
  end
  def employee_details()
    puts "Employee Id - #@emp_id"
    puts "Hotel Id - #@hotel_id"
    puts "Role Id - #@role_id"
    puts "Employee FirstName - #@emp_firstname"
    puts "Employee LastName - #@emp_lastname"
    puts "Employee DOB - #@emp_dob"
    puts "Employee Gender - #@emp_gender"
    puts "Employee Phone No. - #@emp_phoneno"
    puts "Employee EmailId - #@emp_email"
    puts "Employee Password - #@emp_password"
    puts "Employee Salary - #@emp_salary"
  end
end

class RoleId 
  def initialize(roleid,title,description)
    @role_id=roleid
    @role_title=title
    @role_desc=description
  end
  def roleid_details()
    puts "Role Id - #@role_id"
    puts "Role Title - #@role_title"
    puts "Role Description - #@role_desc"
  end
end

puts "Hotel Details"
hotel1=Hotel.new("1","Lemon Tree Hotel","Sector 60 Gurgaon","122002","Gurgaon","India","200","9767809772","4")
#hotel1.addHotel
hotel1.hotel_details
#hotel1.@@no_of_hotels
hotel1.total_no_of_hotels
puts "\n\n"

puts "Owner Details"
owner1=Owner.new("200","1","Lemon Tree Hotel...","1","Akshay","Puri","34","7898790000","akshaypuri@gmail.com")
owner1.owner_details
puts "\n\n"

puts "Room Details"
room1=Room.new("1","Junior Suite" ,"1","Occupied","Clean")
room1.room_details
puts "\n\n"

puts "Room Type Details"
roomtype1=Roomtype.new("Junior Suite","1","5000","room.jpg","A single room with a bed and sitting area, room size is 60 m².","Electronic Door Lock,In-room Safe Deposit Box,Non Smoking Rooms,Flat Screen TV,Sofa,FREE WiFi,Air-conditioning")
roomtype1.roomtype_details
puts "\n\n"

puts "Booking Details"
booking1=Booking.new("176589","1","4090","1","01-04-2023","12-04-2023 2:00 PM","14-04-2023 10:30 AM","2","0","No Disturbance Please!")
booking1.booking_details
puts "\n\n"

puts "Guest Details"
guest1=Guest.new("4090","176589","Mrs.","Alka","Mathur","21-09-1994","F","9008077889","alkamathur@gmail.com","alka@1234","657021347890","Sector 91 Noida","130099","Noida","India")
guest2=Guest.new("4091","176589","Mr.","Manoj","Mathur","11-07-1992","M","8009045627","manojmathur@gmail.com","manoj@1234","214589075690","Sector 91 Noida","130099","Noida","India")
guest1.guest_details
puts "\n"
guest2.guest_details
puts "\n\n"

puts "Bill Details"
bill1=Bill.new("1905229009","176589","4090,4091","20000","2000","3000","14000","500","0","","01-04-2023","Online","3452908012394567","12/26","TXN0110045","Successful")
bill1.bill_details
puts "\n\n"

puts "Employee Details"
employee1=Employee.new("7070","1","3445","Shankar","Sachan","23-05-1999","M","7090855264","shankarsachan@gmail.com","shankar@1234","30000")
employee1.employee_details
puts "\n\n"

puts "Role Id Details"
roleid1=RoleId.new("3445","Hotel General Manager","Responsibility for oversight of a property, including all sales and marketing, operations, events, maintenance, and customer service.")
roleid1.roleid_details
puts "\n\n"
