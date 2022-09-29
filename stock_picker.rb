
def stock_picker(stock)
  #initialize variables to stores values
  #greatest diferecnce(profit)
  dif = 0
  #lower number/price
  lower_price = stock[0]
  #index of previous var
  i_lower_price = 0
  #array result
  result =""

  #iterate trough eache value and index of the arg
  stock.each_with_index do |price, i_price|
    #if the cuurent price is lower than lower price:
    if price < lower_price
      #now lower_price will have that value
      lower_price = price
      #and i_lower_price will be the current index
      i_lower_price = i_price
      next
    end
    #if current price-lower_price  is greater taht dif(higher proffit)
    if price - lower_price > dif
      #dif will be that. (current price - lower_price)
      dif = price - lower_price
      #and the result will include index of lower price and index of
      #current price 
      result = "Buy on day #{i_lower_price}, sell on day #{i_price} and have a proffit of #{dif}"
    end
  end
  #return that array
  result
end

stock_picker([17,3,6,9,15,8,6,1,10])
