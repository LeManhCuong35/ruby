require_relative 'staff'

$BASE_SALARY = 3000

staff_list = []
hard_staff_list = []

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
end

staff_list.each do |staff|
  salary = staff.working_time * $BASE_SALARY + staff.ot * $BASE_SALARY * 1.5
  if salary.to_i > 5000
    hard_staff_list << staff
  end
  
  puts staff.inspect
end

puts "hard staff list: "
hard_staff_list.each do |staff|
  puts staff.inspect
end
