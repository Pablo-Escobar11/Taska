puts "What is your name and age?"
name = gets.chomp
height = gets.chomp.to_i
weight = (height - 110) * 1,15
puts "#{name} ваш вес #{weight}"
if weight < 0
  puts "Ваш вес уже оптимальный"
end