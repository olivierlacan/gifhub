class Gif < ActiveRecord::Base
  attr_accessible :filename, :source_url, :tag_tokens
  attr_reader :tag_tokens

  has_and_belongs_to_many :tags

  validates :source_url, presence: true

  scope :recent, order("created_at DESC")

  def tag_tokens=(tokens)
    self.tag_ids = Tag.ids_from_tokens(tokens)
  end

  def to_s
    self.source_url
  end
end
