class Expense < ApplicationRecord
  belongs_to :user

  enum :status, %i(draft validated archived trashed)
end
