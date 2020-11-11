puts "Введите 3 стороны треугольника"
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i  
side1, side2, biggest_side = [a, b, c].sort
if side1 == side2 && side2 == biggest_side
    puts 'равносторонний треугольник'       
elsif side1 == side2 || side1 == biggest_side || side2 == biggest_side
    puts 'равнобедренный треугольник'
end
if biggest_side**2 == side1**2 + side2**2
    puts 'Прямоугольный треугольник'
end

