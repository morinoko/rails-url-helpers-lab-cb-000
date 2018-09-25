class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def switch_status
    self.active = !self.active
    self.save
  end
end
