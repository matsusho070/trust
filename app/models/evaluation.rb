class Evaluation < ApplicationRecord
  belongs_to :src_user_id
  belongs_to :dst_user_id
end
