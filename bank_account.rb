class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def show_balance
    puts "Please enter your PIN"
    pin_number = gets.chomp.to_i
      if pin_number == pin
        puts "Balance: £#{@balance}."
      else
        pin_error
      end
  end

  def withdraw
    puts "Please enter your PIN"
    pin_number = gets.chomp.to_i
      if pin_number == pin
        puts "How much would you like to withdraw?"
        amount = gets.chomp.to_i
          @balance -= amount
          puts "Withdrew #{amount}. New balance: £#{@balance}.\nThank you."
      else
        puts pin_error
      end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

chris = Account.new('Chris', 5000)
