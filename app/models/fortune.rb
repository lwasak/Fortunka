class Fortune
  include Mongoid::Document
  field :title
  field :body
  embeds_many :comments
  validates_presence_of :title
  validates_presence_of :body
  
end
