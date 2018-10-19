$secret_number = rand(10)

$guessed = false

puts "I know a secret number. Try ro guess it!"

def compare(answer)
	if $secert_number > answer
	puts "Secret number is bigger"
	elsif $secret_number < answer
	puts "Secret number is smaller"
	else puts "Secret number is #{$secret_number}. Congrats!"
	$guessed = true
	end
end

while $guessed == false
	gets
	compare(Integer($_))
end