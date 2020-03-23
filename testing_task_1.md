### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

#line 11 should have an extra = otherwise we are trying to reassign instead of checking values are the same
  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

#dif should be 'def' to declare a new function in Ruby
#the multiple parameters passed to the function should also be separated by a , in the function signature
#line 23 returns 'card' however should be 'card1' as 'card' is not defined anywhere in the scope of this function
#There is an 'end' statement on line 29 that should not be there, and should be after line 37 instead
  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card
  else
    return card2
  end
end
end

#we have to assign the variable total before we can use it in the following code, so totol = 0 on line 33
#we also need to move the return statement to be after the for loop has concluded otherwise it will print that string after one iteration over the array
#we also need to convery the total to string to use at the end of the return statement, and should include a space after of
def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end
```
