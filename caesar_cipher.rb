def encode(plaintext, cipher)
  ciphertext = plaintext.chars
  ciphertext.collect! do |letter|
    case letter.ord
      when 65..90
       (((letter.ord - 65 + cipher) % 26) + 65).chr 
      when 97..122
       (((letter.ord - 97 + cipher) % 26) + 97).chr 
    else
      letter
    end
  end 
  return ciphertext.join
end

while true do
puts "Your message Caesar?"
message = gets.chomp

print "Your cipher? "
code = gets.chomp.to_i

puts "#{message} #{code}"

puts encode(message, code)
puts "==================="
end
