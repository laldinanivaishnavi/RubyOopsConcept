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