class AppsController < ApplicationController
  # index
  def index
    @apps = App.all
  end

  # new
  def new
    @app = App.new
  end

  # create
  def create
    @app = App.create!(app_params)

    redirect_to @app
  end

  #show
  def show
    @app = App.find(params[:id])
  end

  # edit
  def edit
    @app = App.find(params[:id])
  end


  # update
  def update
    @app = App.find(params[:id])
    @app.update(app_params)

    redirect_to @app
  end

  # destroy
  def destroy
    @app = App.find(params[:id])
    @app.destroy

    redirect_to apps_path
  end

  private
  def app_params
    params.require(:app).permit(:name, :app_url)
  end
end
