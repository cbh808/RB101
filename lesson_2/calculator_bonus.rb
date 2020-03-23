# require "pry"

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num == '0'
    true
  else
    num.to_i != 0
  end
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Another Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please add a name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("Please input the first number:")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("That's not a valid number!")
    end
  end

  number2 = ''
  loop do
    prompt("Please input the second number:")
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("That's not a valid number!")
    end
  end

  operator_prompt = <<-MSG
  What operation is to be performed?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please enter 1 (+), 2 (-), 3 (*), 4 (/)")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_i() + number2.to_i
            when '2'
              number1.to_i() - number2.to_i
            when '3'
              number1.to_i() * number2.to_i
            when '4'
              number1.to_f() / number2.to_f
            end

  prompt("The result is #{result}")

  prompt("Would you like to do another calculation? (Y to calculate again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using Another Calculator - See ya!")

# ask user for two numbers
# ask for operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)
