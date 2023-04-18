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