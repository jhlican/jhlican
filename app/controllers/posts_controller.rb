class PostsController < ApplicationController
    #Creat
    def new
        #사용자가 데이터를 입력할 화면
        #자동으로 액션 이름과 같은 뷰를 불러서 보여줘라
    end
    
    def creat
    #입력받은 데이터를 실제로 DB에 저장할 액션, 보여줄 화면은 필요없음.
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}"
    end
    
    #Read
    #모든 포스트
    def index 
        @posts = Post.all
    end
    #특정 포스트
    def show
        @post = Post.find(params[:post_id])
        @comments = Comment.where(post_id: params[:post_id])
    end
    
    #Delete
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        redirect_to '/'
    end
    
    #Update
    #사용자가 데이터를 조작할 
    def edit
        @post = Post.find(params[:post_id])
    end
     
    #실제 DB에 저장할 액션
    def update
        @post = Post.find(params[:post_id])
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        
        redirect_to "/posts/show/#{params[:post_id]}"
        
    end
    
    
    
end
