require 'yaml'
MESSAGES = YAML.load_file('loan_calculator.yml')

def statements(message)
  puts "   ===> #{message}"
end

# get loan amount
statements(MESSAGES['loan_amount'])
loan = gets.chomp.to_f
statements("#{loan} is the loan amount.")

# get loan length in years convert to months
statements(MESSAGES['loan_duration'])
duration = gets.chomp.to_f.round(2)
statements("#{duration} years (#{duration * 12} months) is the loan duration.")

# get apr annual and convert to monthly
statements(MESSAGES['loan_APR'])
apr = (gets.chomp.to_f).round(2)
statements("#{apr}% per year (#{(apr / 12).round(2)}% per month) is the loan duration.")

# plug values into formula and output result
m = (loan * ((apr / 1200) / (1 - (1 + apr / 1200)**(-(duration * 12))))).round(2)
puts "The monthly payment would be #{m}."

statements(MESSAGES['bye'])
