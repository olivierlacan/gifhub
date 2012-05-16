class Tag < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :gifs

  def to_s
    self.name
  end

  def self.tokens(query)
    tags = where("name ILIKE ?", "%#{query}%")
    if tags.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      tags
    end    
  end

  def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
    tokens.split(',')
  end
end
