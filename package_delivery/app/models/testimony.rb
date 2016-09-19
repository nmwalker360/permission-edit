class Testimony < ActiveRecord::Base
    validates :text, presence: true,
                    length: { minimum: 5 }
    validates :name, presence: true,
                    length: { minimum: 5 }
                    
    validates :rating, presence: true,
                    :inclusion => 1..5
end
