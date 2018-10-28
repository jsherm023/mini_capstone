array = []
index = 0
def(input_array)
  input_array.times do
    if index %2 == 0
      index +=1
    else
   array << index
     index +=1
   end
sum = array[1] + array[2] + array[3]
p sum

p array  = [1,2,3,4,5]