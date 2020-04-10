class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  
end
def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Users.create! row.to_hash
  end
end
