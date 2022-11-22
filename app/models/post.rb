class Post < ApplicationRecord
    belongs_to :author
    has_many :post_tags
    has_many :tags, through: :post_tags
end
class PostTag < ApplicationRecord
    belongs_to :post
    has_many :tag
end
class Tag < ApplicationRecord
    has_many :post_tags
    
end
