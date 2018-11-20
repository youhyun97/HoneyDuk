class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.build(comment_params)
		
		#코멘트 작성한 유저의 번호
		@comment_user = @comment.user_id
		@comment_user_id = User.find_by(id:@comment_user)
		@comment_user_nickname = @comment_user_id.nickname

		if @comment.save
			respond_to do |format|
				format.js
			end
		else
		end
	end
	def destroy
		@comment = Comment.find(params[:id])
		if @comment.destroy
			respond_to do |format|
  				format.js				
			end
		end
	end

	private
	def comment_params
		params[:comment][:user_id] = current_user.id
		params.require(:comment).permit(:content, :user_id)
	end
end
