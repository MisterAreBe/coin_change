require "minitest/autorun"
require_relative "coin.rb"

class TestCoin < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_11_cents_returns_1_dime_1_penny
        assert_equal({:dime=>1, :penny=>1}, min_coins(11))
    end

    def test_100_cents_returns_4_quarters
        assert_equal({:quarter=>4}, min_coins(100))
    end

    def test_9001_cents_returns_correctly
        assert_equal({:quarter=>360,:penny=>1}, min_coins(9001))
    end

end