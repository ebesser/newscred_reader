class ArticlesController < ApplicationController

	def home 
		@topics = ["technology", "leadership", "innovation", "lifestyle", "smallbiz", "family", "health", "nutrition"]
	end

	def home2
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
		guid = params[:guid]
		article = Article.where(guid: guid).first
		article.favorited = true
		article.save
		puts article.favorited

		headers = {
					"X-CSRF-TOKEN" => '7FwKQAUNHkQCx5AWGxdXGTmy',
					"Cookie" => 'optimizelyEndUserId=oeu1440515114596r0.6941659844014794; ajs_anonymous_id=%229cea984d-0517-46a4-b00d-609d2b7e22a1%22; _hp2_id.2757902115=2596831747473042.0487519512.1268894314; _uc_referrer=direct; _uc_last_referrer=direct; _uc_initial_landing_page=http%3A//newscred.com/theacademy/learn/calculate-content-marketing-roi; _uc_visits=1; optimizelySegments=%7B%22975020958%22%3A%22search%22%2C%22978391086%22%3A%22false%22%2C%22982220953%22%3A%22gc%22%2C%221800850243%22%3A%22gc%22%2C%221805040336%22%3A%22campaign%22%2C%221824020197%22%3A%22false%22%7D; optimizelyBuckets=%7B%7D; _mkto_trk=id:585-FDY-438&token:_mch-newscred.com-1440515114671-80027; logglytrackingsession=ea7eb484-02a3-4acf-bf37-420e4d545fe1; _gat=1; connect.sid=s%3Aa8E_veNLEON0D0uQq4Z3XJ0K.IhaCgBkG1WLBCqUotbqtYnZ9BbJ%2BQINFUczOCZaNeR0; _ga=GA1.2.1643726623.1440515115; ki_t=1434905320455%3B1443796893294%3B1443810296739%3B89%3B2974; ki_r=https%3A%2F%2Faccounts.newscred.com%2Flogin; _hp2_ses.3243919410=*; _hp2_id.3243919410=5448469651379220.4027359712.2653373859; fs_uid=www.fullstory.com`LjU`5652298076258304; ajs_user_id=%22533c4bcfd237ee9d351c98e3%22; ajs_group_id=%22740c832fcaf57fdd10dec387ef84df0c%22'
				}

		payload = {
			:guid => guid,
			:format => "json"
		}

		url = "https://cmc.newscred.com/api/collection/efe6bdd8c4078164e1ec55216cff71f1/items?access_key="+ACCESS_KEY4+"""

		res = RestClient.post url, payload, headers

		redirect_to '/articles/' + params[:id] + ""
	end

end