class Goal < ActiveRecord::Base
  has_many :entries
  belongs_to :user
  enum priority: [:low, :below, :average, :above, :high]
end
