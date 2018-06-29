# require 'pry'

class CreditCheck
  def initialize

  end

  def valid_number?(card_number_orig)
    card_number = make_card_array(card_number_orig)
    card_number = double_odd_digits(card_number)
    card_number = array_minus_nine(card_number)
    final_number = sum_total(card_number)
    if final_number % 10 == 0
      puts true
    else
      puts false
    end
  end

  def validation_output(card_number_orig)
    card_number = make_card_array(card_number_orig)
    card_number = double_odd_digits(card_number)
    card_number = array_minus_nine(card_number)
    final_number = sum_total(card_number)
    if final_number % 10 == 0
      puts "The number #{card_number_orig} is valid"
    else
      puts "The number #{card_number_orig} is invalid"
    end
  end


  def make_card_array(card_number)
    return card_number.to_i.digits

  end


  def double_odd_digits(card_number)
    array_doubled = []
    card_number.each.with_index do | digit, index |
      if index.odd?
        digit = digit * 2
        array_doubled << digit
      else index.even?
        array_doubled << digit
      end
    end
    return array_doubled
  end

  def array_minus_nine(array_doubled)
    sum_digits = []
    array_doubled.each do | digit |
      if digit > 9
        digit = digit - 9
        sum_digits << digit
      else
        sum_digits << digit
      end
    end
    return sum_digits
  end

  def sum_total(sum_digits)
    return sum_digits.sum

  end

end

card_number_orig = "5541801923795240"

credit_check = CreditCheck.new
credit_check.validation_output(card_number_orig)
credit_check.valid_number?(card_number_orig)
