require("minitest/autorun")
require("minitest/reporters")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")

    @river1 = River.new("Amazon")

    @fish1 = Fish.new("Gilbert")
    @fish2 = Fish.new("Luke")
    @fish3 = Fish.new("Adam")
    @fish4 = Fish.new("Finn")
    @fish5 = Fish.new("Dave")
    @fish6 = Fish.new("Collin")

    @all_fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6 ]
  end

  def test_can_get_num_of_fish_eaten
    assert_equal(0, @bear1.fish_eaten())
  end

  def test_can_eat_a_fish
    @river1.add_fish(@all_fish)
    @bear1.eats_a_fish(@river1)
    assert_equal(1, @bear1.fish_eaten())
    assert_equal(5, @river.num_of_fish())
  end

end
