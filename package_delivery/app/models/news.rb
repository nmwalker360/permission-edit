class News < ActiveRecord::Base
   validates :title, presence: true, length: {maximum:50},uniqueness: { case_sensitive: false }
  
  validates :content, presence: true, length: {maximum: 1000}
end
