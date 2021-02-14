class Employ < ApplicationRecord
  self.table_name = 'employees'
  belongs_to :team
  belongs_to :job_title 
  def name
    "#{first_name} #{last_name}"
  end
end
