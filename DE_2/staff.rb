class Staff
  def initialize name, id, department, working_time, ot
    @name, @id, @department, @working_time, @ot = name, id, department, working_time, ot
  end

  attr_accessor :name, :id, :department, :working_time, :ot

end
