# TwentyFive Tweets

Search a person's last 25 tweets.

![alt tag](https://github.com/derekmpham/twentyfive-tweets/blob/master/launch-page.png)


## Login or Sign Up

![alt tag](https://github.com/derekmpham/twentyfive-tweets/blob/master/login-page.png)
![alt tag](https://github.com/derekmpham/twentyfive-tweets/blob/master/signup-page.png)


## Type in someone's Twitter handle

![alt tag](https://github.com/derekmpham/twentyfive-tweets/blob/master/search-twitterhandler.png)


## Read through that person's last 25 tweets and know when they tweeted

![alt tag](https://github.com/derekmpham/twentyfive-tweets/blob/master/show-tweets1.png)
![alt tag](https://github.com/derekmpham/twentyfive-tweets/blob/master/show-tweets2.png)


## Installation

These instructions assume that you already have Ruby on Rails set up on your computer. To set up Ruby on Rails, click [here](https://launchschool.com/blog/how-to-install-ruby-on-rails-development-environment-for-mac-os-x) for Mac and [here](https://launchschool.com/blog/how-to-install-ruby-on-rails-development-environment-for-linux) for Linux. First, register to use the Twitter REST API [here](https://apps.twitter.com/). Then run the following in your command line:

	git clone https://github.com/derekmpham/twentyfive-tweets.git
	cd twentyfive-tweets/
	touch .env

In your newly created .env file, fill in the following information found in your Twitter developer account:

	TWITTER_CONSUMER_KEY=XXXXXXXXXX
	TWITTER_CONSUMER_SECRET=XXXXXXX
	TWITTER_ACCESS_TOKEN=XXXXXXXXXX
	TWITTER_ACCESS_TOKEN_SECRET=XXX

Go back to your command line and run:

	bundle install
	rake db:create
	rake db:migrate
	rails s

Copy and paste http://localhost:3000 into your browser, and that's it-- now you can run TwentyFive Tweets locally!
