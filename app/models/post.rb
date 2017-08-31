class Post < ActiveRecord::Base
    #Comments 을 가지고 있다.
    belongs_to :user
    has_many :comments, dependent: :destroy
    
end
