array = [0, 1]
i = 2
loop do
fib = array[i - 1] + array[i -2]
break if fib > 100
array << fib
i += 1
end 
print array
  