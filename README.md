# NewsCred Mobile Reader

This is a really simple application I built during a company hackathon that allows users to read their daily licensed content on the go and save the ones they like to NewsCred's Content Marketing Cloud (CMC) to be published later. The app sends a request to the CMC and adds the selected articles to the account's list of favorited articles.

There is a large seed file that hits the NewsCred API and writes each of the articles to a database. I am using the dotenv gem to hide access tokens.