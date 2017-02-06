=begin
in this project you will be creating a program that tells people what grade they will need on a test to get a particular overall grade in the class. Look at the pseudocode below as an example of how the the UI is and how the calculation works
=end

#Example 1

#My current overall grade is 80/100
# my next test is worth 20 points
# I want to know what grade I will need on the test in order to keep a C in the class
# I know that the overall points in the class will be 120
# and that 120*.7 is 84 so I will need a 4/20, or 20% on the next test to maintain a 70% in the class.


#Example 2

# my current grade is 45/50, a 90%
# I want to know how to move to a 95% if my next test is worth 25 points
# I know that my overall grade will be out of 75 points, and .95 of 75 is 71.25
# so the person will need 71.25-45=26.5 points on the next test or 106% to get a 95%





puts "what is the totals amount of points possible in your class?"
total=gets.to_f
puts "How many points do you currently have in this class"
current=gets.to_f
currentGrade = (current*100)/total
puts "Current grade #{currentGrade}"
puts "do you have an assignment coming up?"
reply = gets.chomp
if reply=="yes"
  puts "How many points is your test out of"
  test_points=gets.to_f
  newtotal = test_points+total
  puts "what grade in percentage do you want in this class"
  grade_reply=gets.to_f
  grade_reply = grade_reply / 100
  dreamGrade = grade_reply*newtotal
  gradeNeeded = ((dreamGrade-currentGrade)/(newtotal-total))*100
  puts "You will need a #{gradeNeeded} to get up to a #{grade_reply*100} in this class"
elsif reply=="no"
  puts "why are you here?"
else
  puts "sorry, I did not understand that"
end
