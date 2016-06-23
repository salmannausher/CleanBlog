class LikesController < ApplicationController
	def create_likes
    @article=Article.find(params[:id])
    @article.likes.create(user_id: current_user.id)
    respond_to do |format|
    format.html {}
    format.js {}
    format.json { respond_with @objects}
  end

		
	end
end
