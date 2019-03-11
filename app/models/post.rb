# frozen_string_literal: true

class Post < ApplicationRecord
  default_scope -> { order(updated_at: :desc) }
  default_scope -> { where(deleted: false) }
end
