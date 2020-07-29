=begin
# inputs:
string as argument
# outputs:
implement a miniature stack-and-register-based programming language that has a few commands
    
# rules:
n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the register.
    ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value
# Example / Test Case:
see code

# Data Structures:
input
output

# Algorithm:
set Register to 0, and Stack to empty array
convert string from argument into array of strings
iterate over each element of array
check first if argument coverted to int and back to str is still same
if same put integer value into the register
use case to choose the next operation
=end 

def minilang(command_str)
  puts
  register = 0
  stack = []
  commands = command_str.split(' ')

  commands.each do |command|
    
    if command.to_i.to_s == command
      register = command.to_i
    else
      case command
      
      when 'PUSH'
        stack.push(register)
      when 'ADD'
        register = stack.pop + register
      when 'SUB'
        register = register - stack.pop
      when 'MULT'
        register = register * stack.pop
      when 'DIV'
        register = register / stack.pop
      when 'MOD'
        register = register % stack.pop
      when 'POP'
        register = stack.pop
      when 'PRINT'
        puts "#{register}"
      end
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
