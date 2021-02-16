class BankAccount
    attr_accessor :balance, :status
    attr_reader :name

    def initialize (name)
        @name = name
        @status = "open"
        @balance = 1000
    end

    def deposit(amount)
        self.balance += amount

    end
    
    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        if balance > 0 
            status == "open"
        else
            status == "closed"            
        end
    end

    def close_account
        self.status = "closed"
    end
            



end
