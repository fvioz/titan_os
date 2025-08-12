module Contents
  module Types
    class ContentType < ::Types::BaseObject
      description "A type of content, such as a movie, TV show, or channel."

      field :type, String, null: false, description: "The type of content, e.g., movie, tv_show, channel."
      field :original_title, String, null: false, description: "The original title of the content."
      field :year, Integer, null: true, description: "The year the content was released."
      field :duration_in_seconds, Integer, null: false, description: "The duration of the content in seconds."
    end
  end
end
