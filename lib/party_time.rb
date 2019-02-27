require "pry"

def kids_hash
kids_hash = {
  :party_one=>{
    :party_number => '1',
    :facilitator => 'Erica',
    :attendance => [
    {name: 'Harry', age: 6, wavers: 'yes', harness: "red", shoe_size: 3},
    {name: 'Frankie', age: 9, wavers: 'yes', harness: "blue", shoe_size: 7},
    {name: 'Gale', age: 4, wavers: 'yes', harness: "red", shoe_size: 3},
    {name: 'Rony', age: 4, wavers: 'no', harness: "red", shoe_size: 2},
    {name: 'Julia', age: 10, wavers: 'yes', harness: "blue", shoe_size: 9},
    {name: 'Sarrah', age: 3, wavers: 'no', harness: "red", shoe_size: 13},
    {name: 'James', age: 3, wavers: 'yes', harness: "red", shoe_size: 2},
    {name: 'Kevin', age: 5, wavers: 'yes', harness: "red", shoe_size: 3},
    {name: 'Jessie', age: 11, wavers: 'yes', harness: "blue", shoe_size: 10}
    ]
  },
  :party_two =>{
    :party_number => '2',
    :facilitator => 'Jimbo',
    :attendance => [
    {name: 'Jimmy', age: 6, wavers: 'yes', harness: "red", shoe_size: 3},
    {name: 'Katie', age: 7, wavers: 'yes', harness: "red", shoe_size: 4},
    {name: 'Dale', age: 8, wavers: 'yes', harness: "blue", shoe_size: 6}
  ]
},
  :party_three =>{
    :party_number => '3',
    :facilitator => 'Logan',
    :attendance => [
    {name: 'Paul', age: 6, wavers: 'yes', harness: "red", shoe_size: 3}
  ]
},
  :party_four => "not booked"
}
end

def num_belayers(party)
  puts "BELAYERS:"
      i=0
    kid_count = 0
    baby_count= 0
    kids_hash.values.each do |parties|
      # binding.pry
       next unless parties.is_a?(Hash)
       if parties[:party_number] == (party)
      parties[:attendance].each do |kid|
             # binding.pry
            if kid[:age] >= 5
              kid_count += 1
            else
              baby_count +=1
            end
          end
        end
            belays_kids = kid_count / 5.00
            belays_babies = baby_count / 3.00
            belays = belays_kids.ceil + belays_babies.ceil
             binding.pry
      # puts "For #{kids_hash.keys[i]}, You will need #{belays} belayers."
    end
      puts "For party #{party}, You will need #{belays} belayers."
      i+=1
      kid_count = 0
      baby_count= 0
       # nil
       
end
 # num_belayers

def num_harness(party)
  puts "HARNESSES:"
      # i=0
    red_harness = 0
    blue_harness = 0
    kids_hash.values.each do |parties|
      # binding.pry
       next unless parties.is_a?(Hash)
       if parties[:party_number] == (party)
      parties[:attendance].each do |kid|
          if kid[:harness] == "red"
            red_harness +=1
          else
            blue_harness +=1
          end
        end
        end
      end
      puts "For party #{party}, we will need #{red_harness} red harnesses and #{blue_harness} blue harnesses."
      # i+=1
      # red_harness = 0
      # blue_harness = 0

end
    # num_harness

# given names and shoe_sizes for each kid in a party
def kids_shoes(party)
  puts "SHOES:"
   shoe_list = []
   i = 0
       # binding.pry
  kids_hash.values.each do |parties|
    next unless parties.is_a?(Hash)
    if parties[:party_number] == (party)
        # binding.pry
    parties[:attendance].each do |kid|
       # binding.pry
      name = kid[:name]
      shoes = kid[:shoe_size]
        shoe_list << "#{name} with #{shoes} size shoes."
             # binding.pry
             i+=1
     end
   end
  end
    # binding.pry
    puts "For party #{party}, we need shoes for #{i} kids:"
    puts shoe_list
end
 # kids_shoes("2")


 def run
   puts "Please enter the party number here:"
   num_input = gets.chomp
    puts
    num_belayers(num_input)
    puts
    num_harness(num_input)
    puts
    kids_shoes(num_input)
    puts
 end



#=====================================
# def kids_shoes(party)
#   shoe_list = []
#    # party == kids_hash
#    # binding.pry
#   kids_hash.values.each do |parties|
#         # binding.pry
#      next unless parties.is_a?(Hash)
#           # binding.pry
#     parties[:attendance].each do |kid|
#       name = kid[:name]
#       shoes = kid[:shoe_size]
#         shoe_list << "#{name} with #{shoes} size shoes."
#           # binding.pry
#      end
#     end
#  puts "For #{party}, we need shoes for:"
#  puts shoe_list
# end
# kids_shoes("party_one")






# =================================================
# def num_belayers
# kid_count = 0
# baby_count= 0
#   kids_hash.values.each do |parties|
#       parties[:attendance].each do |kid|
#         if kid[:age] >= 5
#           kid_count += 1
#         else
#           baby_count +=1
#         end
#       end
#       #===================================
#         belays_kids = kid_count / 5.00
#         belays_babies = baby_count / 3.00
#         belays = belays_kids.ceil + belays_babies.ceil
# # binding.pry
#       #=================================
#   puts "You will need #{belays} belayers."
#   end
# end
# num_belayers
