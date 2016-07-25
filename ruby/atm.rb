# Create an ATM using methods
# Give your user the ability to check their balance
# They should be able to deposit money into their account 
# They should be able to withdraw money from their account - (they shouldn't be able to withdraw more than they have! or set a limit - have fun with it)
# add any other functionality you want it to have! Have fun.
# BONUS: Add Classes to structure

puts "What is your name?"
$name = gets.chomp
puts "Welcome to #$name's ATM\n\n"

amount = 0.0
$balance = 0.0
resp = ""

def withdraw(amount)
      if amount > $balance || amount <= 0
      	 puts "You do not have enough in your account!"
      	 puts "Would you like to (w)ithdraw, (d)eposit, (v)iew your balance or (q)uit?"
       	 amount = gets.chomp.to_f
       	 resp = gets.chomp.downcase
      end
    	$balance -= amount.to_f
    	printf "$%.2f successfully withdrawn.\n",  amount
    	printf "Your new balance is $%.2f\n", $balance

  end

  def deposit(amount)
     while amount <= 0 do
    	puts "Hey, that is not an integer!"
    	print "Enter amount to deposit: $"
    end
    $balance += amount.to_f
    printf "$%.2f successfully deposited.\n",  amount
    printf "Your new balance is $%.2f\n", $balance
  end


while resp != "q" do 
	puts "Would you like to (w)ithdraw, (d)eposit, (v)iew your balance or (q)uit?"
	resp = gets.chomp.downcase
	
	if resp == "w"
    	print "Enter amount to withdraw: $"
    	amount = gets.chomp.to_f 
    	puts withdraw(amount)
  
  
 	elsif resp == "d"
    	print "Enter amount to deposit: $"
    	amount = gets.chomp.to_f 
    	puts deposit(amount)
	
  
  	elsif resp == "v"
    	printf "Your balance is $%.2f\n", $balance
  

  	elsif resp == "q" 
    	abort("Thank You #$name for stopping by today!")

    else 
    	puts "Didn't understand your command. Try again." 
  	end

end

  

