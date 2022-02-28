=begin
PROBLEM
Build a mortgage/car loan calculator. Return the monthly payment amount.
(Optional add-ons: also return the total interest and the total amount paid)

Inputs:
- loan amount (dollars) => float
- the Annual Percentage Rate (APR) => float (e.g. an input of 5.5 means 5.5%)
- loan duration (years) => float

To be calculated:
- monthly interest rate (APR / 12)
- loan duration in months (duration * 12)
- monthly payment
  formula: m = p * (j / (1 - (1 + j)**(-n)))
  m = monthly payment, p = loan amount, j = monthly interest, n = duration (months)

EXAMPLES
- car loan of total amount $20,000, APR 3.64%, 2.5 years
  inputs: 20_000, 3.64, 2.5
  expected output: 698.47

- mortgage of total amount $500,000, APR 4.846, 30 years
  inputs: 500_000, 4.846, 30
  expected output: 2_637.25

edge cases: 0% APR; loan amount 0; duration 0

DATA STRUCTURES
It may suffice to store everything in separate numeric variables.

ALGORITHM
- print welcome message
- get user inputs
  - validate numbers
  - specify how to enter apr
- process inputs
  - calculate monthly interest rate by dividing APR by 1200; save
  - calculate duration in months by multiplying duration by 12; save
  - calculate monthly payment using the formula above; save
- return monthly payment rounded to two decimal places

=end

def monthly_payment(loan_amount, apr, duration)
  monthly_rate = apr / 1200.0
  months = duration * 12
  payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-months)))
  payment.round(2)
end

def prompt(message)
  puts "=> #{message}"
end

def valid?(input)
  # TODO handle negative numbers (might have to happen
  # outside of this method)
  characters = input.chars
  return false if characters.count('.') > 1
  characters.each do |c|
    if c.ord < 46 || c.ord == 47 || c.ord > 57
      return false
    end
  end
  true
end

def get_amount
  loop do
    prompt("Please enter the total loan amount:")
    loan_amount = gets.chomp
    if valid?(loan_amount)
      return loan_amount.to_f
    end
    prompt("It looks like what you entered isn't a numeric value.")
  end
end

def get_apr
  loop do
    prompt('Please enter the APR on the loan. 
           For example, if the APR is 5%, enter "5".')
    apr = gets.chomp
    # TODO Consider chopping off unnecessary "%" from user input
    if valid?(apr)
      return apr.to_f
    end
    prompt("It looks like what you entered isn't a numeric value.")
  end
end

def get_duration
  loop do
    prompt("Please enter the duration of the loan in years:")
    duration = gets.chomp
    if valid?(duration)
      return duration.to_f
    end
    prompt("It looks like what you entered isn't a numeric value.")
  end
end

prompt("Welcome to the mortgage/loan payment calculator!")
keep_going = true

while keep_going
  loan_amount = get_amount
  apr = get_apr
  duration = get_duration

  payment = monthly_payment(loan_amount, apr, duration)

  prompt("Your monthly payment is #{payment}.")
  # TODO find a way to get it to print exactly two decimal spaces
  # even for multiples of 10 cents
  prompt("Would you like to do another calculation? (Y/N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
