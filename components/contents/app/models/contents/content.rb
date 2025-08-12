module Contents
  class Content < ApplicationRecord
    has_many :availabilities, as: :contentable
  end
end
