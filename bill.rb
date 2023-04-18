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