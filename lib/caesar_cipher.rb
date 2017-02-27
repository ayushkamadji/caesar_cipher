def caesar_cipher(plaintext, cipher)
  plaintext.chars.reduce('') do |ciphertext, letter|
    ciphertext << encipher_letter(letter, cipher)
  end 
end

def encipher_letter(letter, cipher)
    case letter.ord
      when 65..90
       (((letter.ord - 65 + cipher) % 26) + 65).chr 
      when 97..122
       (((letter.ord - 97 + cipher) % 26) + 97).chr 
    else
      letter
    end
end
