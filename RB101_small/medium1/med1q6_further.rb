=begin
solve input string for (3 + (4 * 5) - 7) / (5 % 3)
add error statment
=end 

def minilang(command_str)
  puts
  register = 0
  stack = []
  commands = command_str.split(' ')

  commands.each do |command|
    
    if command.to_i.to_s == command
      register = command.to_i
    elsif command == 'PUSH'
      stack.push(register)
    elsif command == 'PRINT'
      puts "#{register}"
    elsif stack == []
      puts "check command list: stack is empty"
      break
    else
      case command
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
      else
        puts "command list contains unknown token"
        break
      end
    end
  end
end


minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# 8 
minilang('3 PUSH 5 MODULO PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# command list contains unknown token
minilang('3 PUSH 5 MOD MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# check command list: stack is empty

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
