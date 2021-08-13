class User < ActiveRecord::Base
    validates :name, presence: true 
    has_secure_password

    has_many :rides 
    has_many :attractions, through: :rides 

    def mood 
      self.happiness < self.nausea ? "sad" : "happy"
    end

end
