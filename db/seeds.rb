# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'httparty'

technology_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key=45a6ca11a11dc03a90693709b8b0750f&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-fffbfbf447d048ed3028c80468d9241d&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=c39f833eb691d1e039591a77b52da88b+dc2788672e3aa2863361a7cf503d6b23+d21ec4dd9babf507db1339aaf8d4a8eb&categories=&offset=0")['article_set']

Search.create(name: "Technology")

for article in technology_articles
	description = article['description']
	title = article['title']
	author_first_name = article['author_set'][0]['first_name']
	author_last_name = article['author_set'][0]['last_name']
	author = author_first_name + " " + author_last_name
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_id = 1

	Article.create(description: description, title: title, author: author, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_id: search_id)
end






