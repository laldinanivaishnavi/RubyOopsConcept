$user_type=0
$userid=0
class Login

def validate_user(user_id,username,password)
    if user_id.between?(1,1000) && username=="user" && password=="user"
        $userid=user_id
        return 1
    else 
        return 0
    end
end

def validate_admin(username,password)
    if username=="admin" && password=="admin"
        return 1
    else 
        return 0
    end
end

def login(object1)
    while true
        puts "1. Login as User"
        puts "2. Login as Admin"
        puts "3. Quit"
        choice=gets.chomp.to_i
        case choice
        when 1
            puts "For Login as user ,Kindly enter below credentials: "
            puts "Enter User Id: "
            user_id=gets.chomp.to_i
            puts "Enter Username: "
            username=gets.chomp
            puts "Enter Password: "
            password=gets.chomp
            validated=object1.validate_user(user_id,username,password)
            if validated==1
                puts "User Logged In Successfully!"
                $user_type=1
                break
            elsif validated==0
                puts "Oops! Invalid Credentials"
            end
        when 2
            puts "For Login as admin ,Kindly enter below credentials: "
            puts "Enter Username"
            username=gets.chomp
            puts "Enter Password"
            password=gets.chomp
            validated=object1.validate_admin(username,password)
            if validated==1
                puts "Admin Logged In Successfully!"
                $user_type=2
                break
            elsif validated==0
                puts "Oops! Invalid Credentials"
            end
        when 3
            exit
        else
            puts "Invalid Choice, Please Try Again!"
        end
    end
end
end

