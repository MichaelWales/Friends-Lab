def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  person[:favourites][:snacks].include?(food)
end

def add_friend(person, new_friend)
  person[:friends] << new_friend
end

def remove_friend(person, old_friend)
  person[:friends].delete(old_friend)
end

def total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def all_favourite_foods(people)
  favourite_foods = []
  for person in people
    foods.concat(person[:favourites][:snacks])
  end
  return favourite_foods
end

def find_no_friends(people)
  no_mates = []
  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end
  end
  return no_mates
end
