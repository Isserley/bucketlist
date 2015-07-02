# Account.create!(name: 'Site Admin')  #create new account with this  name
	# unless Account.find_by(type: 'Site Admin')
					# saying create this account unless it already exists

# #hard-coding a hundred users
# 100.times do |number|
# 	User.create!(name: 'name', about: 'blah', email: 'email@example.com')
# 							# or "user_#{number}", "user#{number}@example.com", etc.
# end

# TERMINAL:  bundle exec rake db:seed (runs whatever code is in the seeds file)


# User.destroy.all destroys all Users in DB