class Article < ApplicationRecord
validates :title,
        presence: true,
        length: { maximum: 100 }

validates :url,
        presence: true,
        length: { maximum: 200 }

validates :posted_by,
        presence: true,
        length: { maximum: 100 }
end
