class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @pinned_micropost = Micropost.find_by(id: current_user.pinned_micropost_id)
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
