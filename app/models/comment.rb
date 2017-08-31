class Comment < ActiveRecord::Base
    #Post에 속해있다.
    belongs_to :post
    belongs_to :user
end
