# Scripts for building & running the @fortunes_teller tweetbot

Scripts for training data generation and processing of generated tweets by 
[@fortunes_teller](https://twitter.com/fortunes_teller), a human-curated 
tweetbot made with GPT-2 trained on various `fortunes` packages, sourced
from github (full links in `data_generation.R`), the R `fortunes` package,
and by running `fortune fortunes > fortunes.txt` until I was pretty confident
I had all the fortunes included in fortune-mod 1:1.99.1-7build1.

`data_generation.R` walks through generating the training data; model training
and tweet generation happened in Max Woolf's 
[fantastic Google colab notebook](https://colab.research.google.com/drive/1VLG8e7YSEwypxU-noRNhsv5dW4NfTGce).
Post-processing of generated tweets can be found in `cleaning_generated_tweets.R`,
and a simple rtweet script to post tweets in `hourly_post.R`. I have the 
post script called by a bash loop managed by systemd that posts a tweet then 
sleeps an hour.

This bot can be scarily on-the-nose, so this repo also includes a small 
shiny app in `did_i_do_that` to check bot outputs against the training 
dataset to make sure anything I'm choosing as a tweet was actually created
and not just stolen. You can see a demo of the app live [here](https://mm218.shinyapps.io/did_i_do_that/).


