class Comment < ActiveRecord::Base
  validates :author, :presence => true
  validates :body, :presence => true, :length => { :minimum => 2 }
  belongs_to :fortune
end
