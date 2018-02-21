class Agreement < ApplicationRecord
  belongs_to :evaluation_id
  belongs_to :user_id
end
