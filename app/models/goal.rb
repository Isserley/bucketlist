class Goal < ActiveRecord::Base
  has_many :entries
  belongs_to :user
  enum priority: [:if_there_is_time, :would_like_to, :must, :imperative, :cannot_die_without]
end
