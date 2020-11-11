hash = Hash.new
sum = 0
loop do
puts 'Input name of product'
name = gets.chomp
break if name == 'stop'
puts 'Input price'
price = gets.chomp.to_f
puts 'Input amount'
amount = gets.chomp.to_i
hash = {
    name => {
        'price' => price, 'amount' => amount 
        }
    }
end
hash.each do |key, value|
  sum = sum + value['price']*value['amount']
end
puts hash
puts "#{sum}"
