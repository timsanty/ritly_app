class UrlsController < ApplicationController

	def index
		@url = Url.new
		@random = SecureRandom.urlsafe_base64(4)
	end	

	def create
		@url = Url.create url_params
		redirect_to url_path(@url)
	end

	def show
		@url = Url.find(params[:id])
	end

	def go
		url = Url.find_by random_string: params[:random_string]
		redirect_to "http://" + url.link
		#redirect_to "https://#{url[:link]}"
	end



	def preview
		#take original URL and create preview
	end

	private
		def url_params
			params.require(:url).permit(:link, :random_string)
		end
end