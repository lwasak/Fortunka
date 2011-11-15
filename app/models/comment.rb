class Comment
  include Mongoid::Document
  field :author
  field :body
  embedded_in :fortune
  embedded_in :user
  validates_presence_of :author
  validates_presence_of :body
end
