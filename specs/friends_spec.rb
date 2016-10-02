require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../friends' )
require('pry-byebug')

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  def test_name
    assert_equal("Marc", @person5[:name])
  end


  # 1. For a given person, return their favourite tv show
  def test_fave_tv_show
    assert_equal("Friends",fave_tv_show(@person1))
  end

  # 2. For a given person, check if they like a particular food
  def test_food_check
  assert_equal(true, food_check(@person2,"soup"))
  end

  # # 3. Allow a new friend to be added to a given person
  def test_add_new_friend
    add_new_friend(@person3,"Tony")
    assert_equal(true, @person3[:friends].include?("Tony"))
  end

  # 4. Allow a friend to be removed from a given person
  def test_remove_friend
    remove_friend(@person4,"Rick")
    assert_equal(false,@person4[:friends].include?("Rick"))
  end

  # 5. Find the total of everyone's money
  def test_total_money
    assert_equal(143,total_money(@people))
  end

  # 6. For two given people, allow the first person to loan a given value of money to the other
  def test_loan_money
    loan_money(@person3,@person4,10)
    assert_equal(10, @person3[:monies])
    assert_equal(30, @person4[:monies])
  end

  # 7. Find the set of everyone's favourite food joined together
  def test_total_food
    total_food(@people)
    expected = ["charcuterie","soup","bread","ratatouille", "stew","spaghetti","spinach" ]
    actual = total_food(@people)
    assert_equal(actual,expected)
  end

  # INSANE
  # Find the people who have the same favourite tv show











end # ----------------End of Case -----------------------------
