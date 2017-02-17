class Interest < ApplicationRecord
  belongs_to :interested_users, class_name: User
  belongs_to :advertisement
end
