class CommentsController < ApplicationController

	def	create
		@subject = Subject.find(params[:id])
		@comment = Comment.new
  	@comment.detail = params[:comment][:detail]
  	@comment.user_id = current_user.id
  	@comment.subject_id = @subject.id
  	
  	if @comment.save
  		redirect_to subjects_show_path(@subject.id), notice: 'コメントを投稿しました'
  	else
  		
  	end
	end

end
