class AppsController < ApplicationController
	def index
		@apps = App.all
	end

	def new
		@app = App.new
	end

	def about
	end

	def show
		@app = App.find(params[:id])
		@apps = App.all
	end

	def edit
		@app = App.find(params[:id])
	end

	def update
		@app = App.find(params[:id])
		@app.update(app_params)
		redirect_to "/apps/#{@app.id}"
	end

	def create
		@app = App.create!(app_params)
		redirect_to "/apps/#{@app.id}"
	end

	def destroy
		@app = App.find(params[:id])
		@app.destroy
		redirect_to "/apps"
	end	

	private
	def app_params
		params.require(:app).permit(:name, :username, :password)
	end
end