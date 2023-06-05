require_relative 'staff'

$BASE_SALARY = 3000

staff_list = Array.new()
hard_staff_list = Array.new()

puts "enter number of staff: "
size = gets.chomp.to_i

size.times do
  puts "enter name of staff: "
  name = gets.chomp.to_s
  puts "enter id of staff: "
  id = gets.chomp.to_s
  puts "enter department: "
  department = gets.chomp.to_s
  puts "enter working time: "
  working_time = gets.chomp.to_i

  ot = 0
  if ['QA', 'DEV'].include?(department.upcase)
    puts "enter OT: "
    ot = gets.chomp.to_i
  end

  new_staff = Staff.new(name, id, department, working_time, ot)
  staff_list << new_staff

  salary = new_staff.get_salary
  hard_staff_list << new_staff if salary > 5000
end


puts "staff list: #{staff_list.inspect}"
puts "hard staff list: #{hard_staff_list.inspect}"