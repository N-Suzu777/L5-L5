class User < ApplicationRecord
    has_many :tweets #1対多の多の方
    has_many :like_tweets, through: :likes,source: :tweet
end
