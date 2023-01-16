class Account 
  attr_reader :name
  attr_reader :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public 
    def display_balance(pin_number)
      pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end

    def withdraw(pin_number, amount)
      if amount > @balance
        puts over_limit
      else
        if pin_number == pin
          @balance = @balance - amount
          puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
          puts pin_error
        end
      end
    end

    def deposit(amount)
      @balance += amount
    end

  private
    def pin
      @pin = 1234
    end

    def pin_error
      "Access denied: incorrect PIN."
    end

    def over_limit
      "Invalid Amount: Your account don't have money enough!"
    end
end

checking_account = Account.new("Nathan", 7777777)
checking_account.withdraw(1234, 6999999)