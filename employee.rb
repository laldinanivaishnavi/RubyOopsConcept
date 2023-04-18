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
  