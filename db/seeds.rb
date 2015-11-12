# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'httparty'

technology_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY1+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-fffbfbf447d048ed3028c80468d9241d&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=c39f833eb691d1e039591a77b52da88b+dc2788672e3aa2863361a7cf503d6b23+d21ec4dd9babf507db1339aaf8d4a8eb&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

leadership_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY1+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-fffbfbf447d048ed3028c80468d9241d&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=c39f833eb691d1e039591a77b52da88b+dc2788672e3aa2863361a7cf503d6b23+d21ec4dd9babf507db1339aaf8d4a8eb&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

innovation_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY1+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-fffbfbf447d048ed3028c80468d9241d&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=fd9b6a9652833e4539a2bf060a8e00ea+dce8032402f669b00e25620d66e0a911+4d551907903cac90fc16c5959571a509+ef78d4477bb0734b5bc64dfe02c50f2c&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

lifestyle_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY1+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-fffbfbf447d048ed3028c80468d9241d&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=4b9c0360520e7d45c3bb0bb94b567409+7f9041df0eaea5fb7909b2f491c960d9+2f39fe206883dab63d81347fcbb10b30+b33a984a6dea94c9699a1915657638ac+dc2788672e3aa2863361a7cf503d6b23+11250e0e780457cdbebac905cc836859&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

small_business_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY2+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-b365ab0dfded193a55352c71fc6ae88e&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=7308e0118fa02a5479b3bd6a8bfd8cb6+c39f833eb691d1e039591a77b52da88b+106f723068c38b3597d8554bd8ae5c97+ebf9437a60582679cdb4f74b37e39a70+4239a6e44c76644b407260eba8454b28+0dc199c8d77035aca37f37502fd00403&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

family_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY3+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-561152b74a53469b2b88c403c9d95006&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=ca2e03cdb18038e8f540f0ae9b23c086+e45084615e9fb5ff4b963b5cbd8defc2+fbeb7956b7be18b0946f95c7832a602f+8e18eb2bedcd84410bb8dea875289f0a+18117686619e1c964c9f526877d9cb7b+9cc99158b2a9b89ae30a30ad6215d74a+9ded957c23a84ebdddba4c396e01becd+a130aa00aa3bfa229cf9d6f5cc32c2c9&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

health_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY3+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-561152b74a53469b2b88c403c9d95006&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=23a9773e0af6111985bd56109a74741f+d32f6ceede2ad85ed163671382c0ba88+203b3bdcbc28293d2202b5155dfb736c+f3cbbdb995725e2c70bd5f2af25447bd+6d01fe9e24dba78b2608793a26d72898+4e779a572647e28e648728608e973461+30e5aae685cff383a00d234b77a08dfd+312f88eb619ce2a649bfe7db0fa8c879+7c4691548103926ccf488702c8f055b7+9b9eece1a0ea2b591302d6c0798c3289+33d0da3dbf7d03c07b06c61915d3be30&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']

nutrition_articles = HTTParty.get("https://api.newscred.com/articles?callType=articles&query=&access_key="+ACCESS_KEY3+"&advanced_query=true&fields=article.topic.guid+article.topic.name+article.category.name+article.category.dashed_name+article.guid+article.description+article.title+article.author.first_name+article.author.last_name+article.author.designation+article.author.name+article.author.guid+article.source.name+article.source.guid+article.published_at+article.thumbnail.link+article.thumbnail.guid+article.image.guid+article.image.urls.*+article.image.height+article.image.width+article.link+article.editable+article.tracking_pixel+article.collection_item.guid+article.collection_item.collection.guid&format=json&pagesize=20&fulltext=true&asset_groups=-561152b74a53469b2b88c403c9d95006&meta=%7B%22draft__b%22%3A+%22-true%22%7D&sort=date&from_date=&to_date=&languages=&topics=192060a23e44b641f1e64c63088facf0+77515c662a178cd915bccced7f231d57+5a46dfbc0468fca2273dcb5a74487f64+5b4a8f4eb6ebd71509f46c4931dd7b2c+5f944ee754c2ea0b0ad6834c3a6599e2+aa7ec69ebd85bb0e6eb2a6d8e9f64575+81ad36fca0cf0fe17d64b478af02d72d&categories=&offset=0&sources=-aa8ee769628871feea7081e8c9b9ac1a&has_images=true")['article_set']


for article in technology_articles
	description = article['description']
	title = article['title']
	if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
		author_first_name = article['author_set'][0]['first_name']
		author_last_name = article['author_set'][0]['last_name']
		author = author_first_name + " " + author_last_name
	else
		author = ""
	end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "technology"
	guid = article['guid']

	Article.create(description: description, title: title, author: author, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end

for article in leadership_articles
	description = article['description']
	title = article['title']
	if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
		author_first_name = article['author_set'][0]['first_name']
		author_last_name = article['author_set'][0]['last_name']
		author = author_first_name + " " + author_last_name
	else
		author = ""
	end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "leadership"
	guid = article['guid']

	Article.create(description: description, title: title, author: author, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end

for article in innovation_articles
	description = article['description']
	title = article['title']
	if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
		author_first_name = article['author_set'][0]['first_name']
		author_last_name = article['author_set'][0]['last_name']
		author = author_first_name + " " + author_last_name
	else
		author = ""
	end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "innovation"
	guid = article['guid']

	Article.create(description: description, title: title, author: author, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end

for article in lifestyle_articles
	description = article['description']
	title = article['title']
	if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
		author_first_name = article['author_set'][0]['first_name']
		author_last_name = article['author_set'][0]['last_name']
		author = author_first_name + " " + author_last_name
	else
		author = ""
	end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "lifestyle"
	guid = article['guid']

	Article.create(description: description, title: title, author: author, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end

for article in small_business_articles
	description = article['description']
	title = article['title']
	# if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
	# 	author_first_name = article['author_set'][0]['first_name']
	# 	author_last_name = article['author_set'][0]['last_name']
	# 	author = author_first_name + " " + author_last_name
	# else
	# 	author = ""
	# end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "smallbiz"
	guid = article['guid']

	Article.create(description: description, title: title, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end

for article in family_articles
	description = article['description']
	title = article['title']
	# if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
	# 	author_first_name = article['author_set'][0]['first_name']
	# 	author_last_name = article['author_set'][0]['last_name']
	# 	author = author_first_name + " " + author_last_name
	# else
	# 	author = ""
	# end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "family"
	guid = article['guid']

	Article.create(description: description, title: title, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end

for article in health_articles
	description = article['description']
	title = article['title']
	# if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
	# 	author_first_name = article['author_set'][0]['first_name']
	# 	author_last_name = article['author_set'][0]['last_name']
	# 	author = author_first_name + " " + author_last_name
	# else
	# 	author = ""
	# end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "health"
	guid = article['guid']

	Article.create(description: description, title: title, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end


for article in nutrition_articles
	description = article['description']
	title = article['title']
	# if article['author_set'][0]['first_name'] && article['author_set'][0]['last_name']
	# 	author_first_name = article['author_set'][0]['first_name']
	# 	author_last_name = article['author_set'][0]['last_name']
	# 	author = author_first_name + " " + author_last_name
	# else
	# 	author = ""
	# end
	publish_date = article['published_at'].split(' ')[0]
	source = article['source']['name']
	featured_image = article['image_set'][0]['urls']['large']
	if article['link']
		canonical_link = article['link']
	else
		canonical_link = ""
	end
	search_name = "nutrition"
	guid = article['guid']

	Article.create(description: description, title: title, publish_date: publish_date, source:source, featured_image: featured_image, canonical_link: canonical_link, search_name: search_name, guid: guid)
end
