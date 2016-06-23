class DislikesController < ApplicationController
	def create_dislikes
        
    @para=Article.find(params[:Did])
    @para.dislikes.create()
    respond_to do |format|
    format.html {}
    format.js {}
    format.json { respond_with @objects}
  end

	end
end
