=begin
Rails.configuration.stripe = {
  publishable_key: ENV["PUBLISHABLE_KEY"],
  secret_key: ENV["SECRET_KEY"]
}
=end
Stripe.api_key = 'sk_test_51MB5SBFK9irlI1A4QkFHgRzn6XBmdrj0OJPvf7cuIDnrJw4HUhUbxyz0jci0Q1H1p4uCTLnEl8PxnyzyKxXCqShg00FdXOxCUC'
#Rails.configuration.stripe[:secret_key]