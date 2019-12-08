

######## CHAPTER 10 Working

# class Todo
#   def initialize(todo)
#     @todo = todo
#   end

#   def text
#     @todo
#   end
# end

# class TodoList
#   def initialize
#     @todo_list = [] 
#   end

#   def add(todo)
#     @todo_list.push(todo) 
#   end

#   def print
#     @todo_list.each do |word|
#       word = word.text 
#       puts "* #{word}" 
#     end
#   end
# end



# class Todo
#   def initialize(todo)
#     @todo = todo   # This sets your instance variable @todo to whatever you passing, you will probably want to add a check to make sure you only accept strings
#   end

#   def text
#     @todo  # The text method is returning whatever the @todo variable is, in this case since you are passing a string, it is returning a string
#   end
# end

# class TodoList
#   def initialize
#     @todo_list = []  # When you are initializing your TodoList you are creating an array called @todo_list
#   end

#   def add(todo)
#     @todo_list << Todo.new(todo) # When you call this method you are adding a new instance of your Todo class
#   end

#   def print
#     # Here you are iterating through your array @todo_list, which we established earlier is an array of your Todo Class variables
#     @todo_list.each do |x| # Pro tip, try to stay away from using names like 'x' or 'y' use more descriptive names
#       # Your 'x' variable here is one of your Todo classes instances
#       puts "* #{x.text}" # As defined in your Todo class, you will need to call the text method to retrieve the text you stored in your class
#     end
#   end
# end
#############################
#############################




##### CHAPTER 9
######### WORKING and pass test
# def random_card
#   cards = ["two", "three", "four", "five", "six", "seven",
#            "eight", "nine", "ten",
#            "jack", "queen", "king", "ace"]

#   cards[rand(13)]
# end

# def move
#   run = true
#   while run == true
#     puts "Would you like to 'hit' or 'stick'"
#     input = gets.chomp
#     if input == "hit"
#       run = false
#     elsif input == "stick"
#       run = false
#     else 
#       run = true 
#     end
#   end
#   return input
# end

# def score(hand)
#   points = 0
#   card_values = {
#     "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
#     "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10, "jack" => 10,
#     "queen" => 10, "king" => 10, "ace" => 11 
#   }
#   hand.each do |card|
#     points += card_values[card].to_i
#   end
#   return points
# end

# def run_game
#   hand = []
#   play = true
#   while play == true
#     if move() == "stick"
#       if score(hand) > 21
#         puts "You busted with: #{score(hand)}"
#       else
#         puts "You scored: #{score(hand)}"
#       end
#       play = false
#     else
#       hand.push(random_card)
#       puts "Score so far: #{score(hand)}"
#     end
#   end  
# end 
#############################


###### WORKING BUT NO RUN_GAME ##########
# hand = []
# points = 0
# play = true
# def random_card
#   cards = ["two", "three", "four", "five", "six", "seven",
#            "eight", "nine", "ten",
#            "jack", "queen", "king", "ace"]

#   cards[rand(13)]
# end
# def move(hand,points,play)
#   # while play == true
#   puts "Would you like to 'hit' or 'stick'"
#   choice = gets.chomp
#   if choice == "stick"
#     if score(points,hand).to_i > 21
#       puts "You busted with: #{score(points,hand)}"
#       play = false
#     else
#       puts "You scored: #{score(points,hand)}"
#       play = false
#     end
#   elsif choice == "hit"
#     hand.push(random_card)
#     puts score(points,hand)
#     # end
#   end
# end
# def score(points, hand)
#   card_values = {
#     "two" => 2,"three" => 3,"four" => 4,"five" => 5,"six" => 6,
#     "seven" => 7,"eight" => 8,"nine" => 9,"ten" => 10, "jack" => 10,
#     "queen" => 10,"king" => 10, "ace" => 11 
#   }
#   hand.each do |card|
#     points += card_values[card].to_i
#   end
#   return points
# end

# # def run_game(play)
# #   while play == true
# #     random_card
# #     move(hand,points,play)
# #   end
# # end

# run_game(play)
# # move(hand,points,play)

#############################
#############################


######### CHAPTER 8
###### Version of Group names devided into group number 

# puts "Please enter how many groups"
# group_num = gets.chomp.to_i

# counter = 0 
# names = []


# while true 
#   puts "Enter name"
#   name = gets.chomp
#   if name == "stop"
#     break
#   else
#     names.push(name)
#   end
# end

# puts names



# count = 0 
# length = 0

# empty_table = Array.new(group_num){Array.new()}

# print empty_table

# names.each do |item|
#   count = 0
#   while true 
#     if count < selection
#       empty_table[count].push(item)
#       count += 1
#     else count == selection
#       count = 0
#     end
#   end
# end


#############################

# selection.times{Array.new}
# groups = []

# while true 
#   if counter < selection
#     names.each do |item|
#       groups[selection].push(item)
#       counter += 1
#     end
#   elsif counter >= selection
#     counter = 0
#   end
# end

#############################


# people = [
#   { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
#   { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
#   { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
#   { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
#   { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
#   { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
#   { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
# ]
# sort_by_groups = {}
# puts "Please enter catagory: 'sport' or 'fruit'"
# input = gets.chomp
# people.each do |catagory_under_consideration|
#   catagory = catagory_under_consideration["#{input}"]
#   name = catagory_under_consideration["name"]
#   if sort_by_groups["#{catagory}"] == nil
#     sort_by_groups["#{catagory}"] = [name]
#   else
#     sort_by_groups["#{catagory}"].push(name)
#   end
# end

# sort_by_groups.each { |item| puts item}


#############################


# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.


# puts "Please enter word"
# word = gets.chomp


# letter_score_2 = {
#   " " => 0,
#   "A" => 1,
#   "B" => 3,
#   "C" => 3,
#   "D" => 2,
#   "E" => 1,
#   "F" => 4,
#   "G" => 2,
#   "H" => 4,
#   "I" => 1,
#   "J" => 8,
#   "K" => 5,
#   "L" => 1,
#   "M" => 3,
#   "N" => 1,
#   "O" => 1,
#   "P" => 3,
#   "Q" => 10,
#   "R" => 1,
#   "S" => 1,
#   "T" => 1,
#   "U" => 1,
#   "V" => 4,
#   "W" => 4,
#   "X" => 8,
#   "Y" => 4,
#   "Z" => 10
# }
# puts "Please enter word"
# word = gets.chomp
# score = 0
# word.split(//).each do |letter|
#   score += letter_score_2[letter]
# end
# puts score


# score = 0
# word.split(//).each { |letter|
#   score += letter_score_2[letter] 
# }


#############################


# # people = [
# #   { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
# #   { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
# #   { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
# #   { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
# #   { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
# #   { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
# #   { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
# # ]

# # sort_by_groups = {}

# # puts "Please enter catagory: 'sport' or 'fruit'"
# # input = gets.chomp

# # people.each do |catagory_under_consideration|
# #   catagory = catagory_under_consideration["#{input}"]
# #   name = catagory_under_consideration["name"]

# #   if sort_by_groups["#{catagory}"] == nil
# #     sort_by_groups["#{catagory}"] = [name]
# #   else
# #     sort_by_groups["#{catagory}"].push(name)
# #   end
# # end

# # puts sort_by_groups


#############################


# # sports_groups = {}

# # puts "Please enter catagory: 'sport' or 'fruit'"
# # catagory = gets.chomp

# # if catagory == "sport" 
# #   catagory = 1
# # elsif catagory == "fruit"
# #   catagory = 2
# # end

# # people.each do |person|
# #   sport = people[catagory]
# #   name = people[0]

# #   if sports_groups[catagory] == nil
# #     sports_groups[catagory] = [name]
# #   else
# #     sports_groups[catagory].push(name)
# #   end
# # end

# # puts sports_groups



# people = [
#   { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
#   { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
#   { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
#   { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
#   { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
#   { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
#   { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
# ]


# sort_by_groups = {}

# puts "Please enter catagory: 'sport' or 'fruit'"
# input = gets.chomp
# puts "Enter what value to search for"
# value = gets.chomp


# people.each do |catagory_under_consideration|
#   catagory = catagory_under_consideration["#{input}"]
#   name = catagory_under_consideration["name"]

#   if sort_by_groups["#{catagory}"] == nil
#     sort_by_groups["#{catagory}"] = [name]
#   else
#     sort_by_groups["#{catagory}"].push(name)
#   end
# endsort_by_groups = {}

# puts "Please enter catagory: 'sport' or 'fruit'"
# input = gets.chomp
# puts "Enter what value to search for"
# value = gets.chomp


# people.each do |catagory_under_consideration|
#   catagory = catagory_under_consideration["#{input}"]
#   name = catagory_under_consideration["name"]

#   if sort_by_groups["#{catagory}"] == nil
#     sort_by_groups["#{catagory}"] = [name]
#   else
#     sort_by_groups["#{catagory}"].push(name)
#   end
# end

# puts sort_by_groups["#{value}"]


# puts sort_by_groups["#{value}"]


# # puts "Enter what category to search"
# # catagory = gets.chomp
# # puts "Enter what value to search for"
# # value = gets.chomp


# # outcome = {}

# # people.each do |person_of_interest|
# #   first = people[catagory]
# #   second = people[value]

# #   if outcome[catagory] == nil
# #     outcome[catagory] = [value]
# #   else 
# #     outcome[catagory].push(value)
# #   end
# # end


#############################
#############################



# # players = [
# #   { :name => "Sam", :sport => "tennis" },
# #   { :name => "Mary", :sport => "squash" },
# #   { :name => "Ed", :sport => "tennis" },
# #   { :name => "Mark", :sport => "football" }
# #   ]

# # sorted_by_sport = {}

# # players.each do |player_under_consideration|
# #   sport = player_under_consideration[:sport]
# #   name = player_under_consideration[:name]

# #   if sorted_by_sport[sport] == nil
# #     sorted_by_sport[sport] = [name]
# #   else
# #     sorted_by_sport[sport].push(name)

# #   end
# # end



# # puts sorted_by_sport


#############################
#############################


# # puts "bear, river,salmon"
# # curse = gets.chomp

# # dictionary = {
# #   "bear" => "a createure that fished on a river for aslmon",
# #   "river" => "A body of water in which salmosn and bear inhabit",
# #   "salmon" => "Afish from a river",
# # }

# # puts dictionary[curse]

#############################
#############################
# ################# CHAPTER 7

# puts "How many groups would you like"
# number_of_groups = gets.chomp.to_i
# names = []
# while true do
#   puts "Please enter name"
#   name_of_individual = gets.chomp
#   if name_of_individual != "stop"
#     names.push(name_of_individual)
#   elsif name_of_individual == "stop"
#     split_names = names.group_by.with_index { |_, index| index % number_of_groups }.values
#     puts "which group do you want to look at"
#     choice = gets.chomp.to_i
    
#     while true
#       last = split_names[choice]
#       # chosen = last.map { |i| '""' + i.to_s + '""'}.join(", ") 
#       puts last
#       break
#     end
#     break
#   end
# end

#############################
#############################

# # word_sets = [[5,7,9]["LTC","BTC","MAKA"]]

# # length = number_sets.length

# # count = 0

# # second_count = 0

# # while true
# #   while second_count < 1000
# #     while count <= length -1 
# #       puts sting = ["#{word_sets[0][count]}" , "infomation about things #{word_sets[1][count]} and here is some more #{word_sets[1][count]}"]
# #       count+=1
# #     end
# #     if count == length
# #       count = 0
# #       second_count+=1
# #     end
# #     break
# #   end
# # end

#############################
#############################


# CROCC GAME
#############################
#############################


# # river = "--P--,--C--,CC-CC,CC-CC"

# # count = 0
# # position = 2


# # while count <= 3
# #   river_split = river.split(",") 
# #   if river_split[count][position] == "C"
# #     puts "Your eaten"
# #     break
# #   else
# #     river_split[count][position] == "P"
# #   end
# #   puts river_split
# #   if count == 3
# #     puts "You survived"
# #     break
# #   else
# #     puts "Type left,right or neither"
# #     move = gets.chomp
# #     if move == "right"
# #       position += 1
# #       count += 1
# #     elsif move == "left"
# #       position -= 1
# #       count += 1
# #     else
# #       position = position
# #       count += 1
# #     end
# #   end
# # end



# ######  WORKING but i need to print --P-- first line not -----

# # river = "-----,--C--,CC-CC,CC-CC"
# # count = 0
# # position = 2
# # person = "P"
# # while true 
# #   river_split = river.split(",") 
# #   river_split[count][position] = "P"
# #   puts river_split
# #   puts "Type left,right or neither"
# #   move = gets.chomp
# #   if move == "right"
# #     position += 1
# #     count += 1
# #   elsif move == "left"
# #     position -= 1
# #     count += 1
# #   else
# #     count +=1
# #   end
# #   if river_split[count][position] == "C"
# #     puts "Your eaten"
# #     break
# #   end
# #   if count == 3
# #     puts "You survived"
# #     break
# #   end
# # end


# # printable = river_4.split(",")
# # puts printable
# # split_river = river_4[1]
# # puts split_river


#############################
#############################
#### WORKING 

# puts "How many groups would you like"
# number_of_groups = gets.chomp.to_i
# names = []
# while true do 
#   puts "Please enter name"
#   name_of_individual = gets.chomp
#   if name_of_individual != "stop"
#     names.push(name_of_individual)
#   elsif name_of_individual == "stop"
#     split_names = names.group_by.with_index { |_,index| index % number_of_groups }.values
#     break
#   end
# end
# while true do
#   puts "which group do you want to look at"
#   choice = gets.chomp
#   choice_num = choice.to_i - 1
#   if choice == "stop"
#     break
#   end
#   if names.length > 0
#     last = split_names[choice_num].join(", ")
#     puts last       
#   else 
#     puts split_names[choice_num]    
#   end
# end

# # puts "How many groups would you like"
# # number_of_groups = gets.chomp.to_i
# # names = []
# # while true do 
# #   puts "Please enter name"
# #   name_of_individual = gets.chomp
# #   if name_of_individual != "stop"
# #     names.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     split_names = names.group_by.with_index { |_, index| index % number_of_groups }.values
# #     while true do
# #       puts "which group do you want to look at"
# #       choice = gets.chomp
# #       choice_num = choice.to_i - 1
# #       if choice == "stop"
# #         exit
# #       end
# #       if names.length > 0
# #         last = split_names[choice_num].join(", ")
# #         puts last       
# #       else 
# #         puts split_names[choice_num]    
# #       end
# #     end
# #   end
# # end

#       # chosen = last.map { |i| '""' + i.to_s + '""'}.join(", ") 




# ######## WORKING ON ONE PASS OVER NOT MULTIPLE

# # puts "How many groups would you like"
# # number_of_groups = gets.chomp.to_i
# # names = []
# # while true do 
# #   puts "Please enter name"
# #   name_of_individual = gets.chomp
# #   if name_of_individual != "stop"
# #     names.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     break
# #     split_names = names.group_by.with_index { |_, index| index % number_of_groups }.values
# #   end
# # end
# # while true do
# #   puts "which group do you want to look at"
# #   choice = gets.chomp
# #   choice_num = choice.to_i - 1
# #   if choice == "stop"
# #     break
# #   end
# #   if names.length > 0
# #     last = split_names[choice_num].join(", ")
# #     puts last       
# #   else 
# #     puts split_names[choice_num]    
# #   end
  
# # end





# # puts "How many groups would you like"
# # number_of_groups = gets.chomp.to_i
# # names = []
# # while true do 
# #   puts "Please enter name"
# #   name_of_individual = gets.chomp
# #   if name_of_individual != "stop"
# #     names.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     split_names = names.group_by.with_index { |_, index| index % number_of_groups }.values
# #     while true do
# #       puts "which group do you want to look at"
# #       choice = gets.chomp
# #       choice_num = choice.to_i - 1
# #       if choice == "stop"
# #         exit
# #       end
# #       if names.length > 0
# #         last = split_names[choice_num].join(", ")
# #         puts last       
# #       else 
# #         puts split_names[choice_num]    
# #       end
# #     end
# #   end
# # end


#############################
#############################

# # while true do
# #   puts "Please enter name"
# #   name_of_individual = gets.chomp
# #   if name_of_individual != "stop"
# #     names.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     split_names = names.group_by.with_index {|_,index| index % number_of_groups}.values
# #     puts "which group do you want to look at"
# #     while choice = gets.chomp.to_i
# #       print split_names[choice]
# #       break
# #     end
# #     break
# #   end
# # end
    
#############################
#############################

# # puts "How many groups would you like"
# # number_of_groups = gets.chomp.to_i

# # index_group = Hash.new()


# # 1.upto(num).each do |i|
# #   i = Hash.new(0)
# # end

# # while true do
# #   puts "Enter name"
# #   name_of_individual = gets.chomp

# #   if name_of_individual != "stop"
# #     i.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     break
# #   end
# # end

# # #make list of k,p with k == 1.upto(num)

# # # gropes = Hash.new { |key| num[]}



#############################
#############################




# # puts "How many groups would you like"
# # number_of_groups = gets.chomp.to_i

# # names = []

# # while true do
# #   puts "Please enter name"
# #   name_of_individual = gets.chomp
# #   if name_of_individual != "stop"
# #     names.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     puts "which groupe do you want to see"
# #     choice = gets.chomp.to_i
# #     break
# #   end
# # end
# # puts names

# # group_num = number_of_groups -1

# # grouping = (0..group_num)
# # split_group = names.slice_when {grouping.next == group_num}


# # puts choice
# # puts split_group[choice]




# # puts "How many groups would you like"
# # number_of_groups = gets.chomp.to_i

# # index_group = Hash.new()


# # 1.upto(number_of_groups).each do |i|
# #   i = Hash.new(0)
# # end

# # while true do
# #   puts "Enter name"
# #   name_of_individual = gets.chomp

# #   if name_of_individual != "stop"
# #     i.push(name_of_individual)
# #   elsif name_of_individual == "stop"
# #     break
# #   end
# # end




# # puts "How many groups do you want to make"
# # number_of_groups = gets.chomp.to_i
# # index_groups = Array.new(number_of_groups) {Array.new}
# # names = []

# # puts index_groups

# # while true do
# #   puts "Enter name"
# #   nam = gets.chomp
# #   if nam == "stop"
# #     break
# #   end
# # end
# # names.delete("stop")

# # current_index = 0

# # while names.length > 0
# #   if current_index == number_of_groups
# #     current_index = 0
# #   else
# #     names_to_push = names[0]
# #     name_to_push[current_index].push(name_to_push)
# #     names.delete_at(0)

# #   end
# # end
# # puts names
# # puts index_groups


# # puts "How many groups would you like"
# # num = gets.chomp.to_i


# # array = Array.new(group_num) {[]}

# # puts "Give me a name"
# # count = 0

# # while input_name = gets.chomp
# #   if input_name == "stop"
# #     puts "which group woudl yu like to see"
# #     choice = gets.chomp.to_i

# #   else puts "give me a name"


# # a = [1.upto(num)]
# # puts a

# # groupes = Hash.new

# # #groupes[num] = name
# # count = 0
# # names = []

# # groupes = {}

# # while true
# #     puts "names please"
# #     nam = gets.chomp

# #   if nam != "stop"
# #       names.push(nam)


# #   elsif nam == "stop"

# #     puts names
# #     break

# #   end
# # end


# # while true 
# #   puts "Please enter name"
# #   nam = gets.chomp
# #   if nam != "stop"
# #     names.push(nam)
# #   elsif nam == "stop"





# #     while count <= num
# #       names.push(nam)
# #       count += 1
# #     if count == num
# #       names.push(nam)
# #       count = 0
# #     end
# #   elsif nam == "stop"
# #     puts "Which group would you like to see?"
# #     choice = gets.chomp.to_i
# #     puts names[choice]


# #make list of k,p with k == 1.upto(num)

# # gropes = Hash.new { |key| num[]}



#############################
#############################

# # total = num
# # count = 1

# # while play == true
# #   puts "please enter names one at a time, when finished type 'stop'"
# #   name_s = gets.chomp

# #   if name_1 != "stop"
# #     #add to has key = count value = name


# # h = Hash.new { |hash, key| hash[key] = "#{key}: Names" }
# # # h["c"]           #=> "Go Fish: c"
# # # h["c"].upcase!   #=> "GO FISH: C"
# # # h["d"]           #=> "Go Fish: d"

# # puts h.keys           #=> ["c", "d"]

# # while input = gets.chomp
# #   if input == "stop"
# #     puts names 

# #############

# # puts "How many groups would you like"
# # num = gets.chomp.to_i

# # groupes =  Array.new(num) {Hash.new}

# # while true 
# #   puts "Please enter names"
# #   name_1 = gets.chomp
# #   if name_1 != "stop"
# #     groupes[num].push(name_1)
# #   elsif name_1 == "stop"


# # 1.upto(num).each do |i|
# #   i = Hash.new(0)
# #   puts i
# # end
# # puts 

# # # total = group_num
# # # count = 1

# # # #create hash of array with key as number 


# # # while true 
# # #   puts "Please enter names one at a time"
# # #   name_1 = gets.chomp

# # #   if name != "stop"
# # #     Hash[count].push(name_1)
# #       #add to hash groupes = {number => name}
# # #     count += 1
# # #     if count == group_num
# # #       count = 1
# # #     end
# # #   end
# # # end

# # s = [['hey','you'][1,2]]

# # s.each {|sub_array|
# #   sub_array.each{|y| puts y}
# #   }


#############################
#############################



# # puts "How many groups would you like"
# # group_num = gets.chomp.to_i
# # total = group_num

# # puts "Please enter list of names"

# # group_nums = Hash.new(0)



# #puts group_num.is_a? Integer
  
# # group_num.each do |item|
# #   #create hash list with group num as key (value will be names)
# #   "group"

# #   in (1..group_num)

# #   group_num.times

#############################
#############################

# # while playe == true
# #   puts "Please enter names for the groups"
# #   names = gets.chomp.split(",")
# #   if names == "stop"

# # array_num = 1
# # names.each do |item|
# #   array_num+"num"(list of arrays).push(item)
# #   array_num += 1
# #   if array_num == total
# #     array_num = 1
# #   end
# # end


# # class Group_divide
# #   puts "Number of groups"
# #   number = gets.chomp.to_i

# #   def initialize(number, names)
# #     @number = number
# #     @names = names
# #   end

# #   def 


#############################
#############################

# #### Working graph generator
# # puts "Please enter list of numbers with ',' between"
# # numbers = gets.chomp
# # split_num = numbers.split(",").join(" ")
# # new_num = split_num.split(" ").map{|item| item.to_i}
# # print numbers
# # new_num.each do |item|
# #   puts "-"*item
# # end

#############################
#############################

# # numbers.split(",")

# # num_array = Array.new

# # numbers.map do |num|
# #   num.to_i
# # end
# # puts numbers


# # list_1 = numbers.split(",")

# # list_1.each do |item|
# #   num_array.push item
# # end

# # puts numbers



# # puts numbers
# # list_1.each do |num|
# #   puts num
  
# # end

# # list.each do |num|
# #   puts "-"*num
# # end

# ##### WORKING AND PAS TEST
# # place = "hall"
# # while true do
# #   if place == "hall"
# #     input_1 = gets.chomp
# #     if input_1.downcase == "look"
# #       puts "You are standing in a hall with a marble floor. You see a door."
# #       input_5 = gets.chomp
# #       if input_5 == "north"
# #         place = "studio"
# #       elsif input_5 == "quit"
# #         puts "Bye!"
# #         break
# #       end
# #     elsif input_1.downcase == "north"
# #       place = "studio"
# #     elsif input_1.downcase == "quit"
# #       puts "Bye!"
# #       break
# #     end
# #   elsif place == "studio"
# #     input_2 = gets.chomp
# #     if input_2.downcase == "look"
# #       puts "You are in a warm and cosy study. You see a safe. You see a desk."
# #       input_3 = gets.chomp
# #       if input_3.downcase == "look at desk"
# #         puts "You see a piece of paper that reads, The combination is 2451."
# #         input_4 = gets.chomp
# #         if input_4.downcase == "enter combination 2451"
# #           puts "You see some diamonds in the safe, pick them up and make your escape"
# #           break
# #         elsif input_4.downcase == "south"
# #           place == "hall"
# #         elsif input_4.downcase == "quit"
# #           puts "Bye!"
# #           break
# #         end
# #       elsif input_3.downcase == "south"
# #         place = "hall"
# #       elsif input_3.downcase == "quit"
# #         puts "Bye!"
# #         break
# #       end
# #     elsif input_2 == "look at desk"
# #       puts "You see a piece of paper that reads, The combination is 2451."
# #       input_6 = gets.chomp
# #       if input_6 == "enter combination 2451"
# #         puts "You see some diamonds in the safe, pick them up and make your escape"
# #         break
# #       elsif input_6 == 'quit'
# #         puts "Bye!"
# #         break
# #       end
# #     elsif input_2.downcase == "south"
# #       place = "hall" 
# #     elsif input_2.downcase == "enter combination 2451"
# #       puts "You see some diamonds in the safe, pick them up and make your escape"
# #       break
# #     elsif input_2.downcase == "quit"
# #       puts "Bye!"
# #       break
# #     end
# #   end
# # end

#############################
#############################

# # ###### WORKING place = "hall"
# # place = "hall"
# # puts "type quit any time to leave"
# # puts "commands prompted are in '__' "
# # while true do
# #   if place == "hall"
# #     puts "You are in the Hall, What would you like to do? 'look' or 'north' or 'quit'?"
# #     input_1 = gets.chomp
# #     if input_1.downcase == "look"
# #       puts "You are standing in a hall with a marble floor. You see a door."
# #       puts "Now would oyu like to move 'north' or 'quit'"
# #       input_5 = gets.chomp
# #       if input_5 == "north"
# #         place = "studio"
# #       elsif input_5 == "quit"
# #         puts "Bye!"
# #         break
# #       end
# #     elsif input_1.downcase == "north"
# #       place = "studio"
# #     elsif input_1.downcase == "quit"
# #       puts "Bye!"
# #       break
# #     end
# #   elsif place == "studio"
# #     puts "You are now in the study. What would you like to do? 'Look' or 'south'?"
# #     input_2 = gets.chomp
# #     if input_2.downcase == "look"
# #       puts "You are in a warm and cosy study. You see a safe. You see a desk.\n"
# #       puts "What would you like to do? 'look at desk' or 'south'"
# #       input_3 = gets.chomp
# #       if input_3.downcase == "look at desk"
# #         puts "You see a piece of paper that reads, The combination is 2451"
# #         puts "would you like to 'enter combination 2451' or move 'south' or 'quit\n'"
# #         input_4 = gets.chomp
# #         if input_4.downcase == "enter combination 2451"
# #           puts "You see some diamonds in the safe, pick them up and make your escape"
# #           break
# #         elsif input_4.downcase == "south"
# #           place == "hall"
# #         elsif input_4.downcase == "quit"
# #           puts "Bye!"
# #           break
# #         end
# #       elsif input_3.downcase == "south"
# #         place = "hall"
# #       elsif input_3.downcase == "quit"
# #         puts "Bye!"
# #         break
# #       end
# #     elsif input_2.downcase == "south"
# #       place = "hall" 
# #     elsif input_2.downcase == "enter combination 2451"
# #       puts "You see some diamonds in the safe, pick them up and make your escape"
# #       break
# #     elsif input_2.downcase == "quit"
# #       puts "Bye!"
# #       break
# #     end
# #   end
# # end

#############################
#############################


# #### WORKING AND PASSING TEST
# # place = "passage"
# # while true 
# #   puts "please enter 'north' or 'south'"
# #   input_1 = gets.chomp
# #   if place == "passage"
# #     if input_1 == "north"
# #       place = "cave"
# #     else  
# #       break
# #     end
# #   elsif place == "cave" 
# #     puts "You are in a scary cave."
# #     if input_1 == "south"
# #       puts "You are in a scary passage."
# #       place = "passage"
# #     elsif input_1 == "north"
# #       puts "You walk into sunlight"
# #       break
# #     end
# #   end
# # end

#############################
#############################


# # #### Working passage/cave game
# # place = "passage"

# # while true 
# #   puts "please enter north or south"
# #   input_1 = gets.chomp
# #   # player is in passage
# #   if place == "passage"
# #     if input_1 == "north"
# #       puts "You are in a scary cave."
# #       place = "cave"
# #     else # or elfis input == "soutn" > do something
# #       break
# #     end
# #   elsif place == "cave" 
# #     if input_1 == "south"
# #       puts "You are in a scary passage."
# #       place = "passage"
# #     elsif input_1 == "north"
# #       puts "You walk into sunlight"
# #       break
# #     end
# #   end
# # end


#############################
#############################


# #### WORKING COUNTING ADD GAME
# # total = 0

# # while true do 
# #   puts "Give me a number"
# #   input_1 = gets.chomp
# #   if input_1 != "stop"
# #     total = input_1.to_i + total
# #   elsif input_1 == "stop"
# #     puts total
# #     break 
# #   end
# # end

# # total = 0
#############################
#############################


# # while play == true
# #   puts "Give me a number"
# #   first_input = gets.chomp
# #   if first_input.to_i == Integer
# #     total = first_input.to_i + total
# #   elsif first_input == "stop" # != Inriger / first_input.downcase
# #     puts total
# #     play = false
# #   end
# # end
# # puts total

# # while input = gets.chop.to_i
# #   if input == "stop"
#       # puts total



##############################
#############################

# # puts "Please choose from Rock, paper or scissors"
# # play = true
# # while play == true
# #   puts "Player 1 choose first from 'rock', 'paper' or 'scissors'"
# #   player_1 = gets.chomp
# #   puts "Player 2 please choose first from 'rock', 'paper' or 'scissors'"
# #   player_2 = gets.chomp
# #   if player_1 == player_2
# #     puts "It's a draw"
# #   elsif player_1 == "rock" and player_2 == "scissors"
# #     puts "Player 1 wins"
# #   elsif player_1 == "scissors" and player_2 == "paper"
# #     puts "Player 1 wins"
# #   elsif player_1 == "paper" and player_2 == "rock"
# #     puts "Player 1 wins"
# #   else
# #     puts "Player 2 wins"
# #     play = false 
# #     break
# #   end
# # end


# #### ROCK PAPER Scisors
# # puts "Please choose from Rock, paper or scissors"

# # play = true
# # while play == true
# #   puts "Player 1 choose first"
# #   player_1 = gets.chomp
# #   puts "Player 2 please choose"
# #   player_2 = gets.chomp

# #   # turn player input into number. relative numbers  compete 
# #   if player_1 == player_2
# #     puts "It's a draw"
# #   elsif player_1 == "rock" and player_2 == "scissors"
# #     puts "Player 1 wins"
# #   elsif player_1 == "scissors" and player_2 == "paper"
# #     puts "Player 1 wins"
# #   elsif player_1 == "paper" and player_2 == "rock"
# #     puts "Player 1 wins"
# #   else
# #     puts "Player 2 wins"
# #     play = false 
# #   end
# # end
# #   # rock1 > scissors2
# #   # scissors2 > paper3
# #   # paper3 > rock1
# #   # input == input 


#############################
#############################


# ### D&D GAME WITH RANDOM CHOICE 

# # puts "Hello Player, Welcome to the Dungeon game"
# # puts "You will have the option to move your charecter"
# # puts "either Right, Forward or Left"
# # puts "Once you make two move sucsessfully you'll WIN"
# # puts "You start facing forward"
# # puts " "
# # puts "Please enter you first move"
# # move = gets.chomp
# # count = 0
# # play_again = true
# # moves = {
# #   1 => "You got eaten! by a Goblin!",
# #   2 => "A Werewolf got you!",
# #   3 => "You made it to the next, now what?"
# # }

# # while play_again == true
# #   if count == 0
# #     move = rand(1..3)

# #     if move == 1
# #       puts moves[1]
# #     elsif move == 2
# #       puts moves[2]
# #     elsif move == 3
# #       puts moves[3]
# #       move_2 = gets.chomp
# #     end
# #   end

# #   if count == 1
# #       if move_2 == 1
# #       puts moves[1]
# #     elsif move_2 == 2
# #       puts moves[2]
# #     elsif move_2 == 3
# #       puts moves[3]
# #       move_3 = gets.chomp
# #     end
# #   end

# #   if count == 1
# #       if move_3 == 1
# #       puts moves[1]
# #     elsif move_3 == 2
# #       puts moves[2]
# #     elsif move_3 == 3
# #       puts "YOU MADE IT!!!!"
# #     end
# #   end
# #   puts "Woudl you like to play again? yes/no"
# #   choice = gets.chomp
# #   if choice.downcase == "yes"
# #     puts "Make your move"
# #     move = gets.chomp
# #     count = 0
# #   elsif choice.downcase == "no"
# #     play_again = false 
# #   end
# # end

#############################
#############################


# ## working D&D game
# # puts "Hello Player, Welcome to the Dungeon game"
# # puts "You will have the option to move your charecter"
# # puts "either Right, Forward or Left"
# # puts "Once you make two move sucsessfully you'll WIN"
# # puts "You start facing forward"
# # puts " "
# # puts "Please enter you first move"
# # move = gets.chomp

# # play_again = true

# # while play_again == true do
# #   if move.downcase == "right"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move.downcase == "left"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move.downcase == "forward"
# #     puts "Well you made it of the mark! Where next?"
# #     move_2 = gets.chomp
# #   end

# #   if move_2.downcase == "right"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move_2.downcase == "left"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move_2.downcase == "forward"
# #     puts "YOU MADE IT!!!!"
   
# #   end 

# #   puts "Woudl you like to play again? yes/no"
# #   choice = gets.chomp
# #   if choice.downcase == "yes"
# #     puts "Make your move"
# #     move = gets.chomp
# #   elsif choice.downcase == "no"
# #     play_again = false 
# #   end
# # end

#############################
#############################


# ### Wroking D&D game
# # puts "Hello Player, Welcome to the Dungeon game"
# # puts "You will have the option to move your charecter"
# # puts "either Right, Forward or Left"
# # puts "Once you make two move sucsessfully you'll WIN"
# # puts "You start facing forward"
# # puts " "
# # puts "Please enter you first move"
# # move = gets.chomp
# # count = 0
# # play = true


# # if count == 0
# #   if move.downcase == "right"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move.downcase == "left"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move.downcase == "forward"
# #     puts "Well you made it of the mark! Where next?"
# #     move_2 = gets.chomp
# #     count +=1
# #   end
# # end

# # if count == 1
# #   if move_2.downcase == "right"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move_2.downcase == "left"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move_2.downcase == "forward"
# #     puts "YOU MADE IT!!!!"
# #     count += 1
# #   end
# # end

# # if count == 2
# #   puts "Woudl you like to play again? yes/no"
# #   play_again = gets.chomp
# #   if play_again.downcase == "yes"
# #     count = 0
# #   else 
# #     break
# #   end
# # end

#############################
#############################


# ## working
# # puts "Hello Player, Welcome to the Dungeon game"
# # puts "You will have the option to move your charecter"
# # puts "either Right, Forward or Left"
# # puts "Once you make two move sucsessfully you'll WIN"
# # puts "You start facing forward"
# # puts " "
# # puts "Please enter you first move"
# # move = gets.chomp

# # play = true

# # while play == true do
# #   if move.downcase == "right"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move.downcase == "left"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move.downcase == "forward"
# #     puts "Well you made it of the mark! Where next?"
# #     move_2 = gets.chomp

# #   end
# #   if move_2.downcase == "right"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move_2.downcase == "left"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move_2.downcase == "forward"
# #     puts "YOU MADE IT!!!!"
# #     break 
# #   end 
# # end




# # while count < 3
# #   if move.downcase == "left"
# #     puts "You got eaten! by a Werewolf!"
# #     break
# #   elsif move.downcase == "right"
# #     puts "Your eaten! By a Goblin!"
# #     break
# #   elsif move.downcase == "forward"
# #     count += 1
# #     puts "WOW you survived, Now which direction"
# #   end  

# #   if count == 3
# #     puts "YOU WIN!!!!!! and wernt eaten!"
# #     puts "would you like to start again? yes/no"
# #     play_again = gets.chomp

# #     if play_again.downcase == "yes"
# #       count == 0
# #     elsif play_again.downcase == "No"
# #       puts "Thanks for playing"
# #       break
# #     end
# #   end
# # end



#############################
#############################


# # puts String.new("Welcome user")
# # user = gets.chomp

# # puts String.new("Hi " + user)
# # if user.chr == String.new("S")
# #   puts user.upcase
# # else
# #   puts String.new("Hi " + user)
# # end

# # puts "Please enter your name"
# # user_name = gets.chomp.capitalize

# # if user_name[0] == "S"
# #   puts user_name.upcase
# # elsif user_name[0] != "S"
# #   puts "Hi #{user_name}"
# # end

  
# # puts "Enter user name"
# # user = gets.chomp

# # return user.upcase if user.chr == "S"
# # return "Hi #{user}"


# # todo_1 = String.new("Wash the dog")
# # puts todo_1.capitalize 

# # one_string = String.new(1)

# # two_string = String.new(6)

# # puts one_string + two_string


# # if false
# #   if nil 
# #     return 0
# #   end
# # else
# #   if 0
# #     return 0
# #   end
# # end

# # count = 0
# # play = true

# # while count < 20 do
# #   if count %3==0
# #     puts count
# #     puts "Fizz"
# #     count += 1
# #   elsif count %5==0
# #     puts "Buzz"
# #     count += 1
    
# #   end
# # end

# # while play == true do
# #   if count %3 == 0 
# #     puts "Fizz"
# #     count += 1
# #   elsif count %5 == 0
# #     puts "Buzz"
# #     count += 1
# #   elsif count %5==0 && count %3==0
# #     puts "FizzBuzz"
# #     count += 1
# #   elsif count %3!=0 && count %5!=0
# #     puts count
# #   elsif count == 20
# #     play = false
# #     break
# #   end
# # end


# # sum = 0
# # count = 1
# # for num in 1..250
# #   num + 
# #   count +=1
# # end
# # puts sum

# # count = 1
# # sum = 1

# # while count <= 250
# #   sum + count = sum
# #   count +=1
# #   if count == 250
# #     break
# #   end
# #   puts sum
# # end
# # puts sum





# # sum = 0
# # for num in 1..250
# #   x = num
# #   puts sum + x
# #   sum = x 
  
# # end
# # puts sum


# # count = 0
# # total = []

# # n = 0
# # sum = 0

# # while n <= 250
# #   sum += n
# #   n += 1
# # end
# # puts sum

# # while count < 250 
# #   if count != 250
# #     count + 1
# #     total + count = total
# #   elsif count == 250
    
# #     break
# #   end
# #   puts total
# # end
# # puts total 

# # while true do
# #   count +=1
# #   puts count
# #   if count == 250
# #     break
# #   end

# # end




# # count = 0
# # total = 0


# # for i in 1...250
# #   i + total = total
# #   puts total 
# # end

# # count = 1
# # total = 1


# # while count < 251
# #   puts count
# #   # total + count = total
# #   count += 1
# #   each in count 
# #     i + total = total
# #   end
# # end
# # puts total

# # total = 0
# # count = 0
# # loop do 
# #   count +=1
# #   count + total = total
# #   puts total
# #   break if count > 250
# # end
# # puts total  

# # count = 0
# # total = 0

# # while true do
# #   puts total
# #   puts count
# #   if count < 250
# #     total + count = total
# #     count += 1
# #   elsif count > 250
# #     puts total
# #     break
# #   end

# # end

# # count = 0
# # first_num = 0
# # second_num = 1

# # while count < 20 
# #   if count == 0
# #     puts 0
# #     count +=1
# #   elsif count == 1

# #   c = a + b

# #   if (c % 2 != 0)
# #     sum = sum + c
# #   end
# #   b = a
# #   a = c
# #   puts sum
# # end



#### COUNTING fibs
# # while count < 20
# #   if count < 2
# #     puts count 

# #   elsif count >= 2
# #     puts fibs + num2

# #     num1 = fibs
# #     num2 = num1
    
# #   end
# #   count +=1
# # end


# # count = 0
# # number = 0
# # while count <= 20
# #   count += 1
# #   number + count = number 
  
# #   if count == 20
# #     break
    
# #   end
# #   puts number
# # end


# # while count < 20
# #   number + count = number 


# # for i in 1..20
# #   puts i + i[+1]
# # end
