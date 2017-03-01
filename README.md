# README

with explanations of the technologies used, the approach taken, features, installation instructions, unsolved problems, etc.

Technologies used:

-Ruby on Rails w/ 2 models
-haveibeenpwned.com API
-HTTParty gem
-Heroku 

Approach taken:

1) Used various Tunr examples to host a Rails server, then added seeds, models, routes, controllers, and views
2) Achieved basic CRUD functionality for 2 models: Apps and Accounts
3) Added user functionality w/ Devise, then customized user permissions
4) Added various functionality associated with password strength
5) Played around with CSS, before eventually implementing a CSS template from W3 Schools. Added my own customizations to that CSS template.
6) Researched how to implement an API
7) Hosted on Heroku

Features:

-CRUD Apps and Accounts info
-Warn users when using an unsafe password. Warnings include: 
	too short, contains 'password', contains username, does not contain different case letters, does not contain number, does not contain symbol, same password used for other SmartUser accounts
-Warn users when using an account that has been associated with breached sites, using data from haveibeenpwned.com. Data includes: site name, domain, breach date, and breach description.  

Unsolved Problems:

-2 problems regarding HTTParty and haveibeenpwned.com: 

1) The haveibeenpwned API does not allow more than one GET request within 1500 milliseconds of eachother (for DDOS protection). This is problematic because I'd like to use the API twice to check breaches for a SmartUser's username AND email. Attempted to fix using Ruby sleep() method between each GET request, but not successful.

2) Sometime between Tuesday 2/28 and Wednesday 3/1 HTTParty stopped retrieving appropriate json data from haveibeenpwned.com: 

e.g. https://haveibeenpwned.com/api/v2/breachedaccount/test@example.com

and instead retrieved the HTML data of a cloudflare anti-DDOS loading page.

e.g. 	DDoS protection by Cloudflare 
		Ray ID: 338d52b00dfe56e7

James surmised this may have something to do with cloudflare's recent breach, which may have resulted in increased security features such as that loading screen. However, I emailed the lead developer of haveibeenpwned.com who said that I've "probably exceeded the rate limit many times in quick succession which means you get Cloudflare's JavaScript challenge page for 24 hours. Give it a day and play nice with the rate limit."

Luckily, however, given the same code this error only occurs on the local hosted version of the app, not on the Heroku site. Still, though, I would like to get it working on the local version for testing and development purposes.


