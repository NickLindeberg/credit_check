require "../lib/credit_check.rb"
require 'minitest/autorun'
require 'minitest/pride'
# require ‘pry’; binding.pry

class CreditCheckTest <Minitest::Test
  def test_if_digits_array_reverse
    credit = CreditCheck.new
      assumed = [0,4,2,5,9,7,3,2,9,8,0,8,1,4,5,5]
      feed = 5541808923795240
    assert_equal assumed, credit.make_card_array(feed)
  end



  def test_if_digits_array_doubled
    credit = CreditCheck.new
      assumed = [0,8,2,10,9,14,3,4,9,16,0,16,1,8,5,10]
      feed = [0,4,2,5,9,7,3,2,9,8,0,8,1,4,5,5]
    assert_equal assumed, credit.double_odd_digits(feed)
  end


  def test_digits_minus_nine
    credit = CreditCheck.new
      assumed = [0,8,2,1,9,5,3,4,9,7,0,7,1,8,5,1]
      feed = [0,8,2,10,9,14,3,4,9,16,0,16,1,8,5,10]
    assert_equal assumed, credit.array_minus_nine(feed)
  end


  def test_sum_total_test
    credit = CreditCheck.new
      assumed = 70
      feed = [0,8,2,1,9,5,3,4,9,7,0,7,1,8,5,1]
    assert_equal assumed, credit.sum_total(feed)
  end
end
