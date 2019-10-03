@students = []

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  puts "Which cohort are they in?"
  cohort = gets.chomp.to_s
  while !name.empty? do
    if cohort.empty?
      cohort = :default
    end
    @students << {name: name, cohort: cohort}
    puts "Now we have #{@students.count} students"
    puts "Enter the student name"
    name = gets.chomp
    break if name.empty?
    puts "Which cohort are they in?"
    cohort = gets.chomp.to_s
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "____________".center(60)
end

def sorted_by_cohort
  @students.sort_by { |student| student[:cohort]}.map { |student| puts "#{student[:name]} : #{student[:cohort]}" }
end

def show_students
  print_header
  sorted_by_cohort
  print_footer
end

# def print(students)
#   i = 0
#   while students.count > i do
#     if (students[i][:name].start_with? 'a') || (students[i][:name].length < 12)
#       puts "#{i}: #{students[i][:name]} (#{students[i][:cohort]} cohort)".center(60)
#     end
#     i += 1
#   end
# end

def print_footer
  if @students.count < 2
    puts "Overall, we have #{@students.count} great student"
  else 
    puts "Overall, we have #{@students.count} great students"
  end
end

interactive_menu
