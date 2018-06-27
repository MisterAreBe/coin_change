require "minitest/autorun"
require_relative "coin.rb"

class TestCoin < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_11_cents_returns_1_dime_1_penny
        assert_equal({dime=>1, penny=>1}, min_coins(11))
    end

end