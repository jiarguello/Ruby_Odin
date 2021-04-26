def stock_picker(stocks)
  higher = 0
  index_lower = 0
  index_higher = 0
  stocks.each_with_index do | number, index1 |
    stocks.each_with_index do | compare, index2 |
      if index2 > index1 
        diference = compare - number
        if (diference > higher)
          higher = diference
          index_lower = index1
          index_higher = index2
        end
      end
    end
  end
  return index_lower, index_higher
end

test = [17,3,6,9,15,8,6,1,10]
p stock_picker(test)
