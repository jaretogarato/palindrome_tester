require 'pry'
require 'colorize'
# require 'colorized_string'

puts ('          *** PALINDROME TESTER ***          ').colorize(:color => :black, :background => :light_blue)

contender = false

loop do
  puts ("")
  puts ("Enter a string and I'll tell you if it's a palindrome.")
  pstring = gets.strip.downcase
  pstring = pstring.delete(' ')
  pstring = pstring.chars
  puts (">>> #{pstring}")
  # puts ("#{pstring.first} , #{pstring.last}" )
  while pstring.length > 1
    if pstring.first == pstring.last
      puts ("So far so good...")
      contender = true
    else
      puts ("     *** Nope, not a palindrome ***     ").colorize(:color => :black, :background => :red)
      contender = false
      break
    end
    pstring = pstring.first pstring.size-1
    pstring.shift
    puts (pstring)
    puts (pstring.length)
    puts ("-----")
  end

  if contender == true
    puts "      *** That's a palindrome! ***      ".colorize(:color => :black, :background => :green)

  end
end
