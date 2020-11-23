class UsersCat < ApplicationRecord
    t.bigint "category_id"
    t.bigint "user_id"
end
