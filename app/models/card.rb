class Card < ActiveRecord::Base
  before_create :populate_from_twitter

  private

  def populate_from_twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "ouFdBUholU7ITIyCsaVHLmrMG"
      config.consumer_secret     = "B75WjPP782kLdshh8sutzShkNhgwn89bN9pHJCjvG4w4av3Yab"
      config.access_token        = "17904868-itt0okO7rAtz7qNHud6J8ErIuhr2vVFbLL0fUbDdP"
      config.access_token_secret = "CNkJtBZsjz1I4gqPRhKgMp0eOU1p2jXL2kvVdUaSdy8Te"
    end

    user = client.user(handle)
    self.bio = user.description
    self.avatar = user.profile_image_uri_https
  end

end
