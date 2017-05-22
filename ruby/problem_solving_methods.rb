array = [10, 20, 9, 14, 22]


def array_search( arr, num )
  index = 0 
  ran_num = nil

  arr.each do | array_index |
    if num == array_index
      ran_num = index
    end 
  index += 1
  end 
  return ran_num
end 

#TEST
#puts array_search( array, 22 )
#puts array_search( array, 6)

def fibonacci( num )
  array = [0,1]

  if num == 0 
    return []
  elsif num == 1
    return [0]
  end 

  index_num_one = 0 
  index_num_two = 1
      
  while array.length < num 
    earlier_one = array[index_num_one]
    eralier_two = array[index_num_two]

    array.push( earlier_one + eralier_two )

    index_num_one += 1
    index_num_two += 1
  end 
return array 
end 

#TEST




