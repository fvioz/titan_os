module Contents
  class Availability < ApplicationRecord
    belongs_to :app, class_name: 'Apps::App'
    belongs_to :contentable, polymorphic: true
  end
end
