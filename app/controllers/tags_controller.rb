class TagsController < ApplicationController

   def show
    @tag = Tag.find(params[:id])
   end

   def index
   	@tags = Tag.all
   end

   def destroy
	@tags = Tag.find(params[:id]).destroy
		flash.notice = "Tag '#{@tag}' Deleted!"
		redirect_to articles_path
   end

end
