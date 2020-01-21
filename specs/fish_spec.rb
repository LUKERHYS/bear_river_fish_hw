require ("minitest/autorun")
require ("minitest/reporters")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative("../fish")
require_relative("../river")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Gilbert")
  end

end
