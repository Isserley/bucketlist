namespace :db do   # all tasks for this namespace can go in here

	# desc "Clear the whole database"
	# task clear: environment do
	# 	User.destroy.all
	# end

  desc "Create a bunch of users"  # let people know what this does
  task populate: :environment do   # run rake db:populate
                   # ^^ load up the environment we specifiedin gemfile (development)
		require 'populator'
		require 'faker'
		User.populate 100 do |user|
			# creates goals for the user
			Goal.populate 3 do |goal|
				goal.goal_title = Faker::Name.name
				goal.goal_img = Faker::Avatar.image("dandelion")
				goal.user = user
				#creates items within the goals
				Entry.populate 5 do |entry|
					entry.goal = goal
				end
			end
			user.username = Faker::Name.name
			user.email = Faker::Internet.email
			user.password = 'password'   # everybody's password is just 'password'
			# user.about = Faker::Lorem.sentence(word_count = 20,
																						# supplemental = false,
                      #                        random_words_to_add = 10)
			puts user.username
		end
  end

end
