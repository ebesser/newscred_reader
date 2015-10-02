class ArticlesController < ApplicationController

	def home 
		@topics = ["technology", "leadership", "innovation", "lifestyle", "smallbiz", "family", "health", "nutrition"]
	end

	def search
	end

	def show
		article_id = params[:id]
		puts article_id
		@article = Article.where(id: article_id).first
	end

	def show_all_search
		search = params[:topic].to_s
		@articles = Article.where(search_name:search)

	end

	def favorite_article

		headers = {
					"X-CSRF-TOKEN" => 'wVZJRKYRZFHTG4_cv6pjfk_S',
					"Cookie" => 'optimizelyEndUserId=oeu1440515114596r0.6941659844014794; ajs_anonymous_id=%229cea984d-0517-46a4-b00d-609d2b7e22a1%22; _hp2_id.2757902115=2596831747473042.0487519512.1268894314; _uc_referrer=direct; _uc_last_referrer=direct; _uc_initial_landing_page=http%3A//newscred.com/theacademy/learn/calculate-content-marketing-roi; _uc_visits=1; optimizelySegments=%7B%22975020958%22%3A%22search%22%2C%22978391086%22%3A%22false%22%2C%22982220953%22%3A%22gc%22%2C%221800850243%22%3A%22gc%22%2C%221805040336%22%3A%22campaign%22%2C%221824020197%22%3A%22false%22%7D; optimizelyBuckets=%7B%7D; _mkto_trk=id:585-FDY-438&token:_mch-newscred.com-1440515114671-80027; logglytrackingsession=817e2346-1f40-4331-817a-d11260d6c8bf; connect.sid=s%3Azv0mfgnyPZ-dxBNK5YdS2Xzm.5pKbUMmnC8ubFTtX758Oh6BeDMUQyYHoheyVICtBDJY; fs_uid=www.fullstory.com`LjU`5652298076258304; _ga=GA1.2.1643726623.1440515115; ki_t=1434905320455%3B1443746688287%3B1443756020034%3B88%3B2956; ki_r=; _hp2_id.3243919410=5448469651379220.3293417548.2495790455; ajs_user_id=%22533c4bcfd237ee9d351c98e3%22; ajs_group_id=%2200bc8851ea0d2a872fc83d5cab9ad972%22'
				}

		payload = {
			:guid => "97f024aeb60d5ba152bf018edd12d89d",
			:format => "json"
		}

		url = 'https://cmc.newscred.com/api/collection/efe6bdd8c4078164e1ec55216cff71f1/items?access_key=740c832fcaf57fdd10dec387ef84df0c'

		RestClient.post url, payload, headers

		redirect_to '/'
	end

end