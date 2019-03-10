# frozen_string_literal: true

users = [
  { email: 'cyrill@pogi.ako' }
]

ActiveRecord::Base.transaction do
  users.each do |u|
    next if User.find_by(email: u[:email]).present?

    user = User.new
    user.email = u[:email]
    user.password = 'P@ssw0rd'
    # user.password_confirmation = 'P@ssw0rd'
    # user.skip_confirmation!
    user.confirmed_at = Time.current
    if user.save
      print '✓'
    else
      print "ERROR: #{user.errors.full_messages.to_sentence}"
      print 'Aborted seeding of User model.'
      break
    end
  end
  print "\nTotal : #{User.all.count}\n"
  # rubocop:enable Rails/Output
end
