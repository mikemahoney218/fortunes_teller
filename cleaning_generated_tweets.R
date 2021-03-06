potential_tweets <- unlist(lapply(
  list.files("generated/archival"),
  function(x) {
    if (x != "archival") readLines(paste0("generated/archival/", x))
  }
))

potential_tweets <- potential_tweets[!grepl("====", potential_tweets)]
potential_tweets <- potential_tweets[nchar(potential_tweets) < 281]

writeLines(potential_tweets, "generated/potential_tweets.txt")