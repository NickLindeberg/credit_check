card_number = ("5541808923795240")

card_array = card_number.chars.reverse

card_array_i = []

  card_array.each do |number|
    number.to_i
    card_array_i << number.to_i
  end

array_doubled = []

  card_array_i.each.with_index do | digit, index |
    if index.odd?
      digit = digit * 2
      array_doubled << digit
    else index.even?
      array_doubled << digit
    end
  end

sum_digits = []

  array_doubled.each do | digit |
    if digit > 9
      digit = digit - 9
      sum_digits << digit
    else
      sum_digits << digit
    end
  end

sum_total = sum_digits.sum


if sum_total % 10 == 0
  puts "The number is valid"
else
  puts "The number is invalid"
end





#this section will have an arrary of some sort.
#multiply every other element of the array by 2
#if statement that adds says the sum of the two values is <10 then add them together




# card_total =
# sum_card = card_total.sum
#
# #need to make
#
# if sum_card % 10 = 0
#   puts "The number is valid!"
# else
#   puts "The number is invalid"
# end
