array = [10]
i = 0
loop do 
arr = array[i] + 5
break if arr > 100
array << arr
i += 1
end
print array  