months = {
  'January' => 31,
  'February' => 28,
  'March' => 31,
  'April' => 30,
  'May' => 31,
  'June' => 30,
  'July' => 31,
  'Aughust' => 31,
  'September' => 30,
  'October' => 31,
  'November' => 30,
  'December' => 31
}
months.each { |month, number|
if number == 30
    puts "#{month}, #{number}"
end 
}         
