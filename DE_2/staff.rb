class Staff
  attr_accessor :name, :id, :department, :working_time, :ot

  DEV_SUBSIDIZE = 1.15
  TESTER_SUBSIDIZE = 1.1

  def initialize name, id, department, working_time, ot
    @name, @id, @department, @working_time, @ot = name, id, department, working_time, ot
  end

  def get_salary 
    salary = @ot * $BASE_SALARY * 1.5
    if @department.upcase == "DEV"
      salary += @working_time * $BASE_SALARY * DEV_SUBSIDIZE
    elsif @department.upcase == "TESTER"
      salary += @working_time * $BASE_SALARY * TESTER_SUBSIDIZE
    else
      salary += @working_time * $BASE_SALARY
    end
    salary
  end
end
