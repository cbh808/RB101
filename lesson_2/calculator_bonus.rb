# require "pry"
LANGUAGE = 'tx'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(num_str)
  num_str.to_i.to_s == num_str || num_str.to_f.to_s == num_str
end

def operation_to_message(op)
  a = case op
        when '1'
          'Adding'
        when '2'
          'Subtracting'
        when '3'
          'Multiplying'
        when '4'
          'Dividing'
      end
  a
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt('add_name')
  else
    break
  end
end

puts "Hi #{name}!" if LANGUAGE == 'en'
puts "Howdy #{name}!" if LANGUAGE == 'tx'

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  operator_prompt = <<-MSG
  What do you want to do?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  puts operator_prompt

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      puts("=> Please enter 1 (+), 2 (-), 3 (*), 4 (/)")
    end
  end

  puts ("=> #{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end

  puts ("=> The result is #{result}")
  puts ''

  prompt('another_calc')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('thanks')
