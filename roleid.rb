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