class Fav < ApplicationRecord
  belongs_to :micropost, counter_cache: :favs_count
  belongs_to :user
end


