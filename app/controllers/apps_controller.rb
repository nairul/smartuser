class AppsController < ApplicationController
  @@popular = { "google" => "http://icons.iconarchive.com/icons/graphics-vibe/classic-3d-social/32/google-icon.png", "amazon" => "http://icons.iconarchive.com/icons/limav/flat-gradient-social/32/Amazon-icon.png", "gmail" => "http://icons.iconarchive.com/icons/marcus-roberto/google-play/32/Gmail-icon.png", "twitter" => "http://icons.iconarchive.com/icons/limav/flat-gradient-social/32/Twitter-icon.png", "facebook" => "http://icons.iconarchive.com/icons/danleech/simple/32/facebook-icon.png", "netflix" => "http://icons.iconarchive.com/icons/dakirby309/windows-8-metro/32/Web-Netflix-Metro-icon.png" }
  def about
  end
  def news
  end
  def contact
  end
  def index
    if current_user
      @popular = @@popular
      @apps = current_user.apps.all
      @accounts = current_user.accounts.all
    else
      @apps = nil
    end
  end
  def show
  @app = App.find(params[:id])
  @popular = @@popular
    if current_user.id == @app.user_id
    else
      redirect_to root_path
    end 
  end
  def edit
    @app = App.find(params[:id])
    if current_user.id == @app.user_id
    else
      redirect_to root_path
    end    
  end
  def new
    redirect_to root_path unless current_user
    @app = App.new
  end
  def create
    # @app = App.create!(app_params.merge(user: current_user))
    @app = current_user.apps.create!(app_params)
    redirect_to app_path(@app)
  end
  def update
    @app = current_user.apps.find(params[:id])
    @app.update(app_params.merge(user:current_user))
    redirect_to app_path(@app)
  end
  def destroy
    @app = current_user.apps.find(params[:id])
    @app.destroy
    redirect_to apps_path
  end
  private
  def app_params
    params.require(:app).permit(:name, :app_url)
  end
end