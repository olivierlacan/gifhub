class Gif < ActiveRecord::Base
  attr_accessible :filename, :source_url

  has_and_belongs_to_many :tags

  def to_s
    self.source_url
  end
end
