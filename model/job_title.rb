class JobTitle < ApplicationRecord
    self.table_name = 'job_titles'
    has_many :employees
end
