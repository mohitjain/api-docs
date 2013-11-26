class ApplicationController < ActionController::Base
	protect_from_forgery
	
	before_filter :htacces_authenticate unless ENV["RAILS_ENV"] == "development"
	
	protected

	def htacces_authenticate
		authenticate_or_request_with_http_basic do |username, password|
			username == "kwaab" && password == "kwaabapi0710"
		end
	end

end
