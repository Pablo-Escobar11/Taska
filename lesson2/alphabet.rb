alphabet = ("a".."z").to_a
vowels = ['a', 'e', 'i', 'o', 'u', 'y'] 
hash = {}
vowels.each do |letter|
  hash[letter] = alphabet.index(letter) + 1
end
print hash  
     