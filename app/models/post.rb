class Post < ApplicationRecord
  
  belongs_to :user
  
  # def user_id=(user_id)
  #   self.user = User.find_by(id: user_id)
  # end
  
end
