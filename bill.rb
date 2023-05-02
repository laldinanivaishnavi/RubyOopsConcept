require 'date'
require './booking.rb'
class Bill
  @@bills=[]
  def add_bill()
    bill={}
    bill[:bill_invoiceno]=rand(1000000..9999999)
    bill[:booking_id]=$bid
    if $selected_room_type[:room_type_id]=="1"
      bill[:roomcharge]=1000*$a
    elsif $selected_room_type[:room_type_id]=="2"
      bill[:roomcharge]=2000*$a
    elsif $selected_room_type[:room_type_id]=="3"
      bill[:roomcharge]=3000*$a
    elsif $selected_room_type[:room_type_id]=="4"
      bill[:roomcharge]=4000*$a
    end
    noofdays=$checkout-$checkin
    bill[:roomservice_charges]=noofdays*100*$a
    bill[:restaurant_charges]=noofdays*500*$a
    bill[:bar_charges]=noofdays*250*$a
    bill[:misc_charges]=0
    bill[:iflatecheckout_charges]=0
    bill[:total_charges]=bill[:roomcharge]+bill[:roomservice_charges]+bill[:restaurant_charges]+bill[:bar_charges]+bill[:misc_charges]+bill[:iflatecheckout_charges]
    bill[:payment_date]=DateTime.now.strftime("%d/%m/%Y %H:%M")
    puts "Please choose the payment mode"
    puts "1. Online through credit card"
    puts "2. Offline- By Cash"
    choice = gets.chomp.to_i
    case choice
    when 1
      bill[:payment_mode]="Credit Card"
    when 2
      bill[:payment_mode]="Cash"
    end
    if bill[:payment_mode]=="Credit Card"
      puts "Enter Credit Card Number"
      bill[:creditcard_no]=gets.chomp
      puts "Enter Expire Date"
      bill[:expire_date]=gets.chomp
    end
    bill[:transaction_id]=rand(100000000000..999999999999)
    puts "Is it Paid?"
    puts "1. Yes"
    puts "2. No"
    status=gets.chomp.to_i
    case status
    when 1
      bill[:transaction_status]="Paid"
    when 2
      bill[:transaction_status]="Transaction is pending!"
    end
    @@bills<<bill
    bill_details(bill)
  end

  def bill_details(bill)
    puts "Bill Invoice No. - #{bill[:bill_invoiceno]}"
    puts "Booking Id - #{bill[:booking_id]}"
    puts "Room Charge - #{bill[:roomcharge]}"
    puts "Room Service Charges - #{bill[:roomservice_charges]}"
    puts "Restaurant Charges - #{bill[:restaurant_charges]}"
    puts "Bar Charges - #{bill[:bar_charges]}"
    puts "Miscellaneous Charges - #{bill[:misc_charges]}"
    puts "If Late Checkout Charges- #{bill[:iflatecheckout_charges]}"
    puts "Total Bill Charges- #{bill[:total_charges]}"
    puts "Payment Date - #{bill[:payment_date]}"
    puts "Payment Mode - #{bill[:payment_mode]}"
    puts "Credit Card Number - #{bill[:creditcard_no]}"
    puts "Expire Date - #{bill[:expire_date]}"
    puts "Transaction Id - #{bill[:transaction_id]}"
    puts "Transaction Status - #{bill[:transaction_status]}"
    bill_pay(bill)
  end

  def bill_pay(bill)
    if bill[:transaction_status]=="Paid"
      puts "\nTransaction Successful"
    else
      puts "\nPlease pay the amount of Rs. #{bill[:total_charges]} for above Booking"
    end
  end
end
