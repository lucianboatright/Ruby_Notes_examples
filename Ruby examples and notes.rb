



# def count_bits(n)
#   #convert n into binary in variable
#   # loop throug list and count how many time 1 appears 
  
#   bin = "%b" % n #n.to_s(2).split("")
#   bin.split("")
#   count = 1

#   bin.each {|x| result+= 1 if x =="1"}
#   print count

#   # for x in bin do
#   # 	if x == "1"
#   # 		count += 1
#   # 	end
#   # end


#   # # bin.each do |x|
#   # #   if x == 1
#   # #     count += 1
#   # #   end
#   # # end
#   # puts count
# end

# count_bits(0)
# count_bits(4)
# count_bits(7)
# count_bits(9)
# count_bits(10)







# def longest(a1, a2)
#   # join both lists
#   # order both lists
#   # take out duplicates
#   (a1 + a2).split("").sort.uniq.join("")
# end
# #   joined = []
# #   list_1 = []

# #   joined_1 = a1.split("").sort.join 
# #   joined_2 = a2.split("").sort.join
# #   list_1 = joined_1 + joined_2
# #   list_1.split("").sort
# #   # order_list = joined.sort()
# #   print list_1
# #   list_1.each { |x| 
# #   	if list_1[x] == list_1[x+1]
# #   	  x.remove!
# #   	end
# #   }
  
# # end

# puts longest("aretheyhere", "yestheyarehere")


# def longest(a1, a2)
#   (a1+a2).split("").sort.uniq.join("")
# end

# str = "String"
# str.chars.sort_by(&:downcase).join


# def order(words)
#   #
#   # if string == "" return ""
#   # split words into lsit_1
#   #for intiger in list_1 
#   # create new hash with key as number and value as word
#   # sort by intiger 
  
#   order_list = {}
#   if word == ""
#     return ""
#   end
  
#   splits = word.split(" ")
#   splits.
#   splits_dic = Hash.new(0)
#   splits.each{|item|
  
#   splits.each
   
# end


# def order(sentence)
#   order_list = {}
#   if sentence == ""
#     return ""
#   end
  
#   splits = sentence.split(" ")

#   splits.each {|i|

#   }
  



   
# end
# print order("is2 Thi1s T4est 3a")


# def sum_two_smallest_numbers(numbers)
#   # make sure numbers are > 0
#   # find min(2)
#   # sum of min(2)
#   order = numbers.sort()
#   order.each do |x| 
#     if order[0] > 0
#       sum = order[0] + order[1]
#     elsif order[0] < 0
#       sum = order[1] + order[2]
#     end
#   return sum 
#   end

# end


####  Put in nor repeated order

# def unique_in_order(iterable)
#   unique = []
#   iterable.split("")
#   iterable.each do |i|
#     if iterable[i] != iterable[i+1]
#       unique.push(i)
#     end
#    end
#   return unique
# end


# iterable = [1,2,2,3,4,5]

# def unique_in_order(iterable)
#   unique = []
#   iterable.each do |i|
#   if iterable[i] != iterable[i+1]
#     unique.push(i) 
#     return unique
#   end
# end




#### COW/DEER CLASS OVERRIDE EXAMPLE
# class Creature
#   def initialize(name)
#     @name = name
#   end
  
#   def fight
#     return "#{@name}: Punch to the chops!"
#   end
# end

# # Add your code below!
# class Dragon < Creature
#   def fight
#     return "#{@name}: Breathes fire!"
#   end
# end

# ok = Creature.new("cow")
# ok_1 = Dragon.new("Deer")

# puts ok.fight
# puts ok_1.fight







########  Class BAsics
# class Message
#   @@messages_sent = 0
#   def initialize(from, to)
#     @from = from
#     @to = to
#     @@messages_sent += 1
#   end
# end

# my_message = Message.new("Nic", "Your almost there")
# my_message = Message.new("Lucian", "Thanks for the help")

# class Email < Message
#   def initialize(from, to)
#     super
#   end
# end





###### CLASS override value
# class Creature
#   def initialize(name)
#     @name = name
#   end
  
#   def fight
#     return "Punch to the chops!"
#   end
# end

# # Add your code below!
# class Dragon < Creature
#   def fight
#     return "Breathes fire!"
#   end
# end





##### CLASSES INHERETING FROM EACH OTHER

# class ApplicationError
#   def display_error
#     puts "Error! Error!"
#   end
# end

# class SuperBadError < ApplicationError  # sets old values to new attribute 
# end

# err = SuperBadError.new
# err.display_error




######  Counting Instances

# class Person
#   # Set your class variable 
#   @@people_count = 0
  
#   def initialize(name)
#     @name = name
#     # Increment your class variable 
#     @@people_count += 1
#   end
  
#   def self.number_of_instances
#     # Return your class variable
#     @people_count 
#   end
# end

# matz = Person.new("Yukihiro")
# dhh = Person.new("David")

# puts "Number of Person instances: #{Person.number_of_instances}"





### CLASS creation
# class Car
#   def initialize(make, model) 
#     @make = make
#     @model = model
#   end
# end

# kitt = Car.new("Pontiac", "Trans Am")

# The code in the example above creates an instance, 
# kitt, of the class Car. kitt has his own @make (“Pontiac”) 
# and @model (“Trans Am”). Those variables belong to the kitt 
# instance, which is why they’re called instance variables.






###### CLASS EXAMPLE
# class Language
#   def initialize(name, creator)
#     @name = name
#     @creator = creator
#   end
	
#   def description
#     puts "I'm #{@name} and I was created by #{@creator}!"
#   end
# end

# ruby = Language.new("Ruby", "Yukihiro Matsumoto")
# python = Language.new("Python", "Guido van Rossum")
# javascript = Language.new("JavaScript", "Brendan Eich")

# ruby.description
# python.description
# javascript.description






# #### RETURN words starting UP_TO "M"
# crew = {
#   captain: "Picard",
#   first_officer: "Riker",
#   lt_cdr: "Data",
#   lt: "Worf"
# }


# first_half = lambda {|key,value| value < "M" }
# 							# value >\< workd on alphabet as well as numbers 

# a_to_m = crew.select(&first_half)

# puts a_to_m






# ##### IS NUMBER < 100 FROM LIST
# ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# under_100 = Proc.new {|num| num < 100}

# youngsters = ages.select(&under_100)
# puts youngsters

#    youngsters = ages.select(&your_proc)





# ######### CHECK IF ITEM IS AN INTEGER
# odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
## SHORT
# ints = odds_n_ends.select{|item| item.is_a? Integer}
# puts ints

## LONG
# full_ints = lambda {|item| item.is_a? Integer}
# ints = odds_n_ends.select(&full_ints)
# puts ints





# #### CHECKS IF ITEMS IN ARRAY ARE ** ###
# my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# # Add your code below!
# symbol_filter = lambda{|item| item.is_a? Symbol}
# 						# is_a? > what Symbol/Intiger/String 
# 						# must have ? to specify request

# symbols = my_array.select(&symbol_filter)
# puts symbols
    # symbol_filter = lambda { |x| x.magic! }
    # my_array.select(&lambda_name)



##### CONVERTS LIST OF STRING TO SYMBOL
# strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# # Write your code below this line!

# symbolize = lambda {|word|word.to_sym}

# # Write your code above this line!
# symbols = strings.collect(&symbolize)
# print symbols



# #### CONVERTS USING :SYMBOLS
# numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# strings_array = numbers_array.map(&:to_s)
# puts strings_array

# ####### strings > intigers
# strings = ["1", "2", "3"]
# nums = strings.map(&:to_i)
# # ==> [1, 2, 3]





###### .CALL 
# hi = Proc.new {puts "Hello!"}
# hi.call

# prints - "Hello"




######  CREATE A PROC string to pass through method
# def greeter()
#   yield
# end

# phrase = Proc.new {puts "Hello there!"}

# greeter(&phrase)




# ###########   PUTS LIST OF >= 4
# group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
# group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
# group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# # Complete this as a new Proc
# over_4_feet = Proc.new {|height| height >= 4}

# # Change these three so that they use your new over_4_feet Proc
# can_ride_1 = group_1.select(&over_4_feet)
# can_ride_2 = group_2.select(&over_4_feet)
# can_ride_3 = group_3.select(&over_4_feet)

# puts can_ride_1
# puts can_ride_2
# puts can_ride_3




# ######### ROUNDS DOWN LIST NUMS 
# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# # Write your code below this line!
# round_down = Proc.new {|num|num.floor}


# # Write your code above this line!
# ints = floats.collect(&round_down)
# print ints




# ####### PROCS - saved blocks of code to a varibale
# cube = Proc.new {|num| num ** 3 }
# #	cube = 		Proc.new 	{|num| num ** 3 }
# # variable_name  new.Proc     Block of code 

# puts [1,2,3,4].collect!(&cube)
						# & converts proc into block 
# puts [1,2,3,4].map!(&cube)

# both MAP and COLLECT do same action on list




###### RETURNS yield maths 
# def double(num)
#   yield(num)
# end

# double(5) {|n|puts n * 2}



##### YIELD entering blocks of code later through use of block coding 
# def yield_name(name)
#   puts "In the method! Let's yield."
#   yield("Kim")
#   puts "In between the yields!"
#   yield(name)
#   puts "Block complete! Back in the method."
# end

# yield_name("Eric") { |n| puts "My name is #{n}." }

# # Now call the method with your name!
# yield_name("Lucian") {|name| puts "My name is #{name}"}




######  RETURN DOUBLE FIBS
# fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# # Add your code below!
# doubled_fibs = fibs.collect {|n| n*2}
# puts doubled_fibs


# double = Proc.new {|x| x * 2}

# doubled_fibs = fibs.collect(&double)
# puts doubled_fibs



# [1, 2, 3].each do |num|
#   puts num
# end
# # ==> Prints 1, 2, 3 on separate lines

# [1, 2, 3].each { |num| puts num }
# # ==> Prints 1, 2, 3 on separate lines

# movies = {
#   "Toy story" => 5
#   }
# puts "Ask action: Add, Update, Delete, Display?"
# choice = gets.chomp.downcase
# case choice

# when "add"
#   puts "Entry Key"
#   key = gets.chomp
#   if movies[title.to_sym].nil? #If movies[title] (.nil? - /./call on before /nil/ if empyt/not fount /?/ on the spot)
#     puts "Entry Value"
#     value = gets.chomp  #sets text to value [rating]
#     movies[key.to_sym] = value.to_i #Converts to symbol and intiger AND ADDS THEM
#     #puts "The movie #{title} has been added with a rating of #{rating}"
#   else
#     puts "Not in Dict"
#   end
# when "update"
#   puts "Which key to alter value"
#   key = gets.chomp
#   if movies[key].nil?
#     puts "key not in the dict"
#   else
#     puts "new value"
#     new_value = gets.chomp
#     movies[key.to_sym] = new_value.to_i
#     puts "#{key} has a new rating of #{new_value}"
#   end
# when "display"
#   movies.each{|key,value| puts "#{key}: #{value}"}
# when "delete"
#   puts "chose key,value to delete"
#   key = gets.chomp
#   movies.delete(key.to_sym)
#   puts "#{key} has been deleted"
# else
#   puts "Error!"
# end

###### Stage one building dict manipulator 
# movies = {
#   "Toy story" => 5
#   }
# puts "Help"
# choice = gets.chomp
# case choice

# when "add"
#   puts "Added!"
# when "updated"
#   puts "Updated!"
# when "display"
#   puts "Display!"
# when "delete"
#   puts "Deleted!"
# else
#   puts "Error!"
# end



# ## Convert list to symbols 
# strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# symbols = []

# strings.each do |item|
# 	s_items = item.to_sym
# 	symbols.push(s_items)
# end
# puts symbols

# string.each{|item| symbols.push(item.to_sym)}


## takes in sentence and return number times word is repeated
# puts "Enter a phrase you'd like to analyze: "
# text = gets.chomp

# words = text.split

# frequencies = Hash.new(0)
# puts frequencies

# words.each { |word| frequencies[word] += 1 }
# puts frequencies


# a_list.each {|x| action something }

# a_dictionary.each {|key,value| action something}

# frequencies = frequencies.sort_by {|colour, count| count}


# frequencies.reverse!

# a_dic = {
#   "Ryan" => "wonton soup",
#   "Eric" => "hamburger",
#   "Jimmy" => "sandwich",
#   "Sasha" => "salad",
#   "Cole" => "taco"
# }

# a_dic.each {|key,value| puts key}

# lunch_order = {
#   "Ryan" => "wonton soup",
#   "Eric" => "hamburger",
#   "Jimmy" => "sandwich",
#   "Sasha" => "salad",
#   "Cole" => "taco"
# }


# fruits = ["orange", "apple", "banana", "pear", "grapes"]

# if 
# puts fruits


### return list aplphibeticaly and reverse order
# fruits = ["orange", "apple", "banana", "pear", "grapes"]
# fruits.sort!.reverse! do |first, second|
#   first <=> second
# end
# puts fruits


## return items * times 
# multiply each by themselves
# my_array = [1, 2, 3, 4, 5]
# my_array.each do |n|
#   puts n * n
# end

### sort books into order reverce order 
# books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# # To sort our books in ascending order, in-place
# books.sort!.reverse! { |firstBook, secondBook| firstBook <=> secondBook }

# books.sort do |first, second|
#   if first > second
#     -1
#   elsif second > first
#     1
#   else
#     0
#   end
# end


### which list is greater
# list_1 = [1,2,3,4,5]
# list_2 = [6]

# puts list_1 <=> list_2



# books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# books.sort!
# puts books


### How many times is each wod repeated in string
# a_list = "how many thimes is each word repeated"

# a_list_1 = a_list.split()
# print(a_list)

# words = {}

# d = {x:a_list_1.count(x) for x in a_list_1}

# print(d)


# lunch_order.each{|k,v|puts v}

=begin
nums = 1
while nums < 51
  print nums
  nums += 1
end
=end

=begin
odds = [1,3,5,7,9]

# Add your code below!
odds.each do |item|
  puts item*2
end


=begin
# i = 20
# loop do
  
#   i -= 1
#   next if i % 2 == 0 
#   print "#{i}"
#   break if i <= 0
# end
=end

=begin
print "Pleathe enter a thtring: " 
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/,"th")
else
  print "Has no s"
end
print user_input
=end


=begin
print "This is my question?"
answer = gets.chomp
print(answer)
answer2 = answer.capitalize 
print(answer2)
answer.capitalize!
print(answer)
=end

=begin
print("What's your first name?")
first_name = gets.chomp

print("What's your last name?")
last_name = gets.chomp

print("What City are you from?")
city = gets.chomp

print("What is the abbreviation of the state are you from?")
state = gets.chomp

puts("My full name is #{first_name} #{second_name} and I come from #{city} in #{state}")
=end




# fruits = ["orange", "apple", "banana", "pear", "grapes"]

# if 
# puts fruits

# fruits = ["orange", "apple", "banana", "pear", "grapes"]
# fruits.sort!.reverse! do |first, second|
#   first <=> second
# end
# puts fruits

# multiply each by themselves
# my_array = [1, 2, 3, 4, 5]
# my_array.each do |n|
#   puts n * n
# end

# sort books into order reverce order 
# books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# # To sort our books in ascending order, in-place
# books.sort!.reverse! { |firstBook, secondBook| firstBook <=> secondBook }

# books.sort do |first, second|
#   if first > second
#     -1
#   elsif second > first
#     1
#   else
#     0
#   end
# end

# list_1 = [1,2,3,4,5]
# list_2 = [6]

# puts list_1 <=> list_2

# books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# books.sort!

# puts books

# a_list = "how many thimes is each word repeated"

# a_list_1 = a_list.split()
# print(a_list)

# words = {}

# d = {x:a_list_1.count(x) for x in a_list_1}

# print(d)


# counter = 20
# for i in counter:
# 	counter -= 1
# 	if i %2 == 0:
# 		print(i)
# 	# if i %2==0:
# 	# 	print(i)

# print(i)

# counter = range(20)
# for i in counter:
# 	if i %2!=0:
# 		print(i)

# for i in range(20):
# 	if i %2!=0:
# 		print(i)