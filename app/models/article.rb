class Article < ApplicationRecord
    include Visible

    VALID_STATUSES = ['public', 'private', 'archived']

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    has_many :comments, dependent: :destroy
end
  