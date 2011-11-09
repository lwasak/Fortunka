class Comment
  include Mongoid::Document
  field :author
  field :body
  embedded_in :fortune
  validates_presence_of :author
  validates_presence_of :body
end
