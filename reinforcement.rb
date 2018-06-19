seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seating(seats)
  seats.each_with_index do |value, index|
    value.each_with_index do |v, i|
      if v == nil
        puts "Row #{index +1} seat #{i +1} is free. Do you want to sit there? (y/n)"
        user_says = gets.chomp
        if user_says == "y"
          puts "What is your name?"
          name = gets.chomp
          seats[index][i] = name
          break
        end
      end
    end
  end
end

# not iterating through all the items in the list
