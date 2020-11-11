puts "Введите коэффициенты a, b, c"
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
puts " #{a}x**2 + #{b}x + #{c} = 0"
discr = b**2 - 4*a*c
if discr > 0 
  puts (-b + Math.sqrt(discr)) / (2 * a).to_f
  puts (-b - Math.sqrt(discr)) / (2 *a).to_f
elsif discr == 0
  puts -b / 2 * a
else 
  puts "Корней нет"  
end  
