class Goal < ActiveRecord::Base
  has_many :entries
  belongs_to :user
  enum priority: [:if_there_is_time, :would_like_to, :must, :imperative, :cannot_die_without]
  has_attached_file :goal_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :goal_img, :content_type => /\Aimage\/.*\Z/

  # will revist faker stuff once I understand a little more
  # trying to generate a bunch of data to test out will_paginate gem

  # Faker::Hacker.noun
end
