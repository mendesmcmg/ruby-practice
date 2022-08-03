module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      interest_rate = -3.213
    elsif balance < 1000
      interest_rate = 0.5
    elsif balance < 5000 
      interest_rate = 1.621
    else 
      interest_rate = 2.475
    end
    interest_rate
  end

  def self.annual_balance_update(balance)
      annual_balance = balance * (1 + (interest_rate(balance).abs / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end


