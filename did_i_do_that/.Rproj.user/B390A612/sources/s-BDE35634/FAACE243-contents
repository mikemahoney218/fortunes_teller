install.packages("rtweet")
library(rtweet)

# This script assumes you've already authenticated via rtweet -- you won't be
# able to post before running rtweet::create_token()

filename <- "generated/available_tweets.txt"
tweet_store <- readLines(filename)
current_tweet_index <- sample(1:length(tweet_store), 1)
rtweet::post_tweet(tweet_store[current_tweet_index])
tweet_store <- tweet_store[-current_tweet_index]
writeLines(tweet_store, filename)