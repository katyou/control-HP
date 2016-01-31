class Post < ActiveRecord::Base
    belongs_to :user_params
    validates :user_id, presence: true
    validates :content, presence: true
    validates :title, presence: true
end
