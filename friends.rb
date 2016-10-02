# 1. For a given person, return their favourite tv show
def fave_tv_show(person)
  return person[:favourites][:tv_show]
end

# 2. For a given person, check if they like a particular food
def food_check(person,food)
  return person[:favourites][:things_to_eat].include?(food)
end

# 3. Allow a new friend to be added to a given person
def add_new_friend(person,friend)
  return person[:friends] << friend
end

# 4. Allow a friend to be removed from a given person
def remove_friend(person,friend)
  return person[:friends].delete friend
end

# 5. Find the total of everyone's money
def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

# 6. For two given people, allow the first person to loan a given value of money to the other
def loan_money(person1,person2,loan)
  person1[:monies]-= loan
  person2[:monies]+= loan
end
# 7. Find the set of everyone's favourite food joined together
def total_food(people)
  food = []
  for person in people
    food.concat(person[:favourites][:things_to_eat])
  end
  return food

end  

# INSANE
# Find the people who have the same favourite tv show


