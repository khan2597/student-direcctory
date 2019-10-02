def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "Any hobbies?"
  hobbies = gets.chomp
  puts "Country of birth?"
  country = gets.chomp
  puts "Height?"
  height = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: hobbies, country: country, height: height}
    puts "Now we have #{students.count} students"
    puts "Enter the student name"
    name = gets.chomp
    break if name.empty?
    puts "Any hobbies?"
    hobbies = gets.chomp
    puts "Country of birth?"
    country = gets.chomp
    puts "Height?"
    height = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "____________"
end

def print(students)
  i = 0
  while students.count > i do
    if (students[i][:name].start_with? 'a') || (students[i][:name].length < 12)
      puts "#{i}: #{students[i][:name]} (#{students[i][:cohort]} cohort)"
    end
    i += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
