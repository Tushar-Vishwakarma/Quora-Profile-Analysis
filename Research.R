#########Get DATA and Write in a FILE###########

install.packages("twitteR")

# load the package by using command library("twitteR")
library("twitteR")

# Additional packages required
install.packages("RCurl")

install.packages("bitops")


# load the package using below command
library("RCurl")

# Now using the data that we can gather from Twitter
# We insert API key, API secret
# Access token and access token secret

api_key <- "NfV4bFuzpOvecZqHUKVPut218"

api_secret <- "0HduocyUAuoz2vcLz82lhyuxcVsZfA86K0VsbLWuERnaGiRUjc"

access_token <- "161261585-8MSVUPFZpYRfd5D29T2fAVtE0Ir3l12I3wXgrsiF"

access_token_secret <- "3TJ3nKWBiZlSixOp9uNOaCh0aACY4zzQ3K5BGaWNDxqsw"
library(twitteR)
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)
1

# Now will dowload some tweets
#newlevels to see what we can get from twitter
# lang -> language; en-> english, n-> number of tweets to show  

newlevels <- searchTwitter("#newlevels", n=100, lang = "en" )

# to see the data
newlevels

# convert tweets into data frame format 
newlevelsdf <- twListToDF(newlevels)

#and then save that into a file
write.csv(newlevelsdf, file = 'C:\\Users\\The Tushar\\Desktop\\tweets.csv', row.names = FALSE)

