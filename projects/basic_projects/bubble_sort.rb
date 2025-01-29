def bubble_sort!(numbers_list)
  list_length = numbers_list.length
  numbers_list.each do
    for index in 0...list_length-1
      if numbers_list[index] > numbers_list[index+1]
        trading_number = numbers_list[index]
        numbers_list[index] = numbers_list[index+1]
        numbers_list[index+1] = trading_number
      end
    end
    list_length -= 1
  end
  p numbers_list
end

bubble_sort!([4,3,78,2,0,2])