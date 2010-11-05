class Comment < ActiveRecord::Base
  validates :commenter, :presence => true
  validates :body,      :presence => true,
                        :length => { :minimum => 4 }
  
  belongs_to :post
end
