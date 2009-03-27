class Project < ActiveRecord::Base
  validates_length_of :name, :within => 3..20
	has_many :group_of_tasks
end
