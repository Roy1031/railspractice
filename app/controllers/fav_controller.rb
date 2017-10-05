class FavController < ApplicationController
    before_action :logged_in_user

    def create
      @fav = Fav.create(user_id: current_user.id, micropost_id: params[:micropost_id])
      @favs = Fav.where(micropost_id: params[:micropost_id])
    end

    def destroy
      fav = Fav.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
      fav.destroy
      @favs = Fav.where(micropost_id: params[:micropost_id])
    end
end

