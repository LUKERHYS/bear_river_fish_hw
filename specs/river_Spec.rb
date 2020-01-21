require("minitest/autorun")
require("minitest/reporters")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class TestRiver < MiniTest::Test

  def setup
    @river1 = River.new("Amazon")

    @fish1 = Fish.new("Gilbert")
    @fish2 = Fish.new("Luke")
    @fish3 = Fish.new("Adam")
    @fish4 = Fish.new("Finn")
    @fish5 = Fish.new("Dave")
    @fish6 = Fish.new("Collin")

    @all_fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6 ]
  end

  def test_can_get_num_of_fish__0
    assert_equal(0, @river1.num_of_fish())
  end

  def test_can_get_num_of_fish__6
    @river1.add_fish(@all_fish)
    assert_equal(6, @river1.num_of_fish())
  end

  def test_can_remove_eaten_fish
    @river1.add_fish(@all_fish)
    @river1.remove_eaten_fish("Gilbert")
    assert_equal(5, @river1.num_of_fish)
  end

end
