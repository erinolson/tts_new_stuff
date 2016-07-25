# puts "What is your name?"

# class Customer
#   attr_reader :name
    
#   end

# user = Customer.new


# puts "Welcome to #{user.name}'s ATM\n\n"
# user.name = gets.chomp.to_s

class Account
  attr_accessor :checking_account, :savings_account, :transfer, 
      def initialize(checking_account, savings_account)
          @checking_account = checking_account
          @savings_account = savings_account   
        end

      def deposit_checking(amount)
          while amount <= 0 do
          puts "Hey, that is not an integer!"
          print "Enter amount to deposit: $"
          end
        @checking_account += amount.to_f
        printf "$%.2f successfully deposited:\n",  amount
        printf "Your current balance is $#{sprintf('%.2f', @checking_account)}"
        amount = gets.chomp.downcase
        puts "Would you like make another deposit?"
        if resp == "yes"
            puts print "Enter amount to deposit: $"
        else
            puts "What would you like to do:  
                  >For (v)iewing inquiries, 
                  >View (s)avings account information, 
                  >View (c)hecking account information, or
                  >(q)uit?"
        end
      end
     
      def withdraw_checking(amount)
        if amount > @checking_account || amount > @savings_account || amount <= 0
         puts "You do not have enough in your account!"
         puts "What would you like to do:  
                  >For (v)iewing inquiries, 
                  >View (s)avings account information, 
                  >View (c)hecking account information, or
                  >(q)uit?"
         amount = gets.chomp.to_f
         resp = gets.chomp.downcase
        end
        
        @checking_account -= prompt
        printf "$%.2f successfully withdrawn.\n",  amount
        printf "Your current balance is $#{sprintf('%.2f', @checking_account)}"
        resp = gets.chomp.downcase
        puts "Would you like make another withdrawal?"
        if resp == "yes"
            puts print "Enter amount to withdraw: $"
        else
        puts "What would you like to do:  
                  >For (v)iewing inquiries, 
                  >View (s)avings account information, 
                  >View (c)hecking account information, or
                  >(q)uit?"
        end
      end
   

     def deposit_savings(amount)
          while amount <= 0 do
          puts "Hey, that is not an integer!"
          print "Enter amount to deposit: $"
          end
        @savings_account += amount.to_f
        printf "$%.2f successfully deposited:\n",  amount
        printf "Your current balance is $#{sprintf('%.2f', @savings_account)}"
        resp = gets.chomp.downcase
        puts "Would you like make another deposit?"
        if resp == "yes"
            puts print "Enter amount to deposit: $"
        else
          puts "What would you like to do:  
                  >For (v)iewing inquiries, 
                  >View (s)avings account information, 
                  >View (c)hecking account information, or
                  >(q)uit?"
        end
      end

    def withdraw_savings(amount)
        if amount > @checking_account || amount > @savings_account || amount <= 0
         puts "You do not have enough in your account!"
         puts "What would you like to do:  For (c)hecking inquiries, View (s)avings account information, View (c)hecking account information, to (t)ransfer funds or (q)uit?"
         amount = gets.chomp.to_f
         resp = gets.chomp.downcase
        end
        
        @savings_account -= prompt
        printf "$%.2f successfully withdrawn.\n",  amount
        printf "Your current balance is $#{sprintf('%.2f', @savings_account)}"
        resp = gets.chomp.downcase
        puts "Would you like make another withdrawal?"
        if resp == "yes"
            puts print "Enter amount to withdraw: $"
        else
            puts "What would you like to do:  For (c)hecking inquiries, View (s)avings account information, View (c)hecking account information, to (t)ransfer funds or (q)uit?"
        end
      end

end

#   def transfer_funds
#     puts "Transfer from Savings to Checking '1'
#           Transfer from Checking to Savings '2' "
        
#     input = gets.chomp.to_i
#       while input == 1
#          puts "Your current balance in your Savings account is: $#{sprintf('%.2f', @savings_account)}
#                Your current balance in your Checking account is: $#{sprintf('%.2f', @checking_account)}
#                How much would you like to transfer from your Savings to your Checking?"
#          transfer = gets.chomp.to_f if @savings_account > 0
#         if transfer > @savings_account
#             puts "You do not have enough money to transfer. "
#         else
#             @savings_account -= "#{transfer}".to_f
#             @checking_account += "#{transfer}".to_f
#             puts "Your current balance in your Savings account is: $#{sprintf('%.2f', @savings_account)}
#                   Your current balance in your Checking account is: $#{sprintf('%.2f', @checking_account)}
#                   Would you like to make another transfer?"  
#             more_transfer = gets.chomp
#             if more == "yes"
#                puts "Transfer from Savings to Checking '1'
#                      Transfer from Checking to Savings '2' "
#             elsif more_transfer == "no"
#                 abort("Thank You #$name for stopping by today!")
#             else
#                 puts "Invalid options"
#                 puts "Transfer from Savings to Checking '1'
#                       Transfer from Checking to Savings '2' "
#             end
#         end
#       end 
    
#         while input == 2
#           puts "Your current balance in your Savings account is: $#{sprintf('%.2f', @savings_account)}
#                 Your current balance in your Checking account is: $#{sprintf('%.2f', @checking_account)}
#                 How much would you like to transfer from your Savings to your Checking?"
#           if transfer > @checking_account
#               puts "You do not have enough money to transfer. "
#           else
#             @checking_account -= "#{transfer}".to_f
#             @savings_account += "#{transfer}".to_f
#             puts "Your current balance in your Savings account is: $#{sprintf('%.2f', @savings_account)}
#                   Your current balance in your Checking account is: $#{sprintf('%.2f', @checking_account)}
#                   Would you like to make another transfer?"
#           end
             
#             more_transfer = gets.chomp
#             if more_transfer == "yes"
#                puts "Transfer from Savings to Checking '1'
#                      Transfer from Checking to Savings '2' "
#             elsif more_transfer == "no"
#                 abort("Thank You #$name for stopping by today!")
#             else
#                 puts "Invalid options"
#                 puts "Transfer from Savings to Checking '1'
#                       Transfer from Checking to Savings '2' "
#             end
#         end
#   end
# end      

entry = ""
while entry != "q" do 
  puts "What would you like to do:  
                  >For (v)iewing inquiries, 
                  >View (s)avings account information, 
                  >View (c)hecking account information, or
                  >(q)uit?"
	entry = gets.chomp.downcase
	
	if entry == "v"
    	
      puts "Your current balance in your Savings account is $%.2f\n", @savings_account
      puts "Your current balance in your Checking account is $%.2f\n", @checking_account

 	elsif entry == "s"
      puts "Do you want to (w)ithdraw or (d)eposit?"
      entry = gets.chomp.downcase

      if entry == "w"
        puts "Enter amount to withdraw: $"
        amount = gets.chomp.to_f 
        
  
      else entry == "d"
        puts "Enter amount to deposit: $"
        amount = gets.chomp.to_f 
        
      end
  
  elsif entry == "c"
      puts "Do you want to (w)ithdraw or (d)eposit?"
      entry = gets.chomp.downcase
      if entry == "w"
        puts "Enter amount to withdraw: $"
        amount = gets.chomp.to_f 
      else entry == "d"
        puts "Enter amount to deposit: $"
        amount = gets.chomp.to_f 
      end
  
  # elsif entry == "t"
  #   puts "Transfer from Savings to Checking '1'\n or Transfer from Checking to Savings '2' "
  #   if entry == "1"

  #   else 

  #   end

  elsif entry == "q" 
    	abort("Thank You #$name for stopping by today!")

  else 
    	puts "Didn't understand your command. Try again." 
  end
end



acct = Account.new(checking_account = 5000,
                  savings_account = 10000)

