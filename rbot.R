# phdwhipbot 0.1
# author: simon munzert

# load packages
library(stringr)
library(XML)
library(twitteR)
library(XLConnect)
library(ROAuth)

# load text bits
phrases   <- readWorksheet(loadWorkbook("kalondozi-phrases.xlsx"), sheet=1,header=F,simplify=T)
animals     <- readWorksheet(loadWorkbook("kalondozi-animals.xlsx"),   sheet=1,header=F,simplify=T)
attributs   <- readWorksheet(loadWorkbook("kalondozi-attributes.xlsx"),sheet=1,header=F,simplify=T)
  
# setup authentication
api_key             <- "AjWcUYDLtPoXvxNDbPTSlK48K"
api_secret          <- "RlchPcIvVMtraKANBtz20kginzuWzUmpo374ICT8PoecSiI6Q7"
access_token        <- "65899213-DKwjhtpqJRykNtis0Ak12KGwQvgj68cRYowF0fcak"
access_token_secret <- "8mFiKGo9MdLVBxdrBmOhLQTvtPugRL4BD4IPx4UGOpvkr"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

# generate tweet
tweettxt <- toupper(str_c(sample(phrases, 1), " ", sample(attributs, 1), " ", sample(animals, 1), "."))

# send tweet
tweettxt
tweet(tweettxt)

