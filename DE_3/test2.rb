student_list = Hash.new()
highest_avg_score = 0
excellent_student = Hash.new()
puts "enter number of students: "
size = gets.chomp.to_i

size.times do
  puts "enter student name: "
  name = gets.chomp
  puts "enter student's score of math: "
  math = gets.chomp.to_i
  puts "enter student's score of literature: "
  literature = gets.chomp.to_i
  puts "enter student's score of english: "
  english = gets.chomp.to_i

  avg_score = ((math + literature + english).to_f / 3).round(2)

  student = Hash["math": math, "english": english, "literature": literature, "avg_score": avg_score]

  if avg_score > highest_avg_score
    highest_avg_score = avg_score
    excellent_student = Hash(name => student)
  end

  student_list = student_list.merge(name => student)
end

puts "student list: #{student_list}"
puts "highset average score: #{highest_avg_score}"
puts "excellent student: #{excellent_student.keys[0]}"
