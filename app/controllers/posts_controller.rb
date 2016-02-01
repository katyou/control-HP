class PostsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    #before_action :kanri_user, only: [:new,:create]

    def new
      @post = Post.new
    end
    
    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            flash[:success] = "投稿しました"
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    
        
    
    private
    def post_params
        params.require(:post).permit(:content)
    end
    
end
