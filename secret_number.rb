require 'English'

$secret_number

$guessed = false

$continue = true

def compare(answer)
  if $secret_number > answer
    puts 'Secret number is bigger'
  elsif $secret_number < answer
    puts 'Secret number is smaller'
  else puts "Secret number is #{$secret_number}. Congrats!"
  $guessed = true
  end
end

def play
  $secret_number = rand(10)
  puts 'I know a secret number. Try ro guess it!'
  until $guessed
    gets
    compare(Integer($LAST_READ_LINE))
  end
end

def play_again
  gets
  if Integer($LAST_READ_LINE) == 1
    $guessed = false
  else $continue = false
    puts 'It was cool to play with you! Thanks :)'
  end

end

while $continue
  play
  puts 'Do you want to play again?' + "\n" + 'Type 1 for yes and 0 for not'
  play_again
end



