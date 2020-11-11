puts 'Input three numbers'
day = gets.chomp.to_i
month = gets.chomp.to_i
year = gets.chomp.to_i
days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days[1] = 29 if (year % 400 == 0) || (year % 4 ==0 && year % 100 != 0)
sum = 0
i = 0
while i < (month-1) 
  sum = sum + days[i]
  i = i + 1
end
 puts resulat = sum + day 
