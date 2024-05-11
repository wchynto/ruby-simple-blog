class Comment < ApplicationRecord
  include Visible

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :commenter, presence: true
  validates :body, presence: true

  belongs_to :article
end
