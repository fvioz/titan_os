Users::User.create!(
  name: "test",
  email: "test@test.com",
  password: 'password'
)

JSON.parse(File.read(Rails.root.join("db", "seeds", "streams_data.json"))).each do |type, contents|
  puts "Seeding #{type}..."

  contents.each do |content|
    model = case content["type"]
            when "movie"
              Movies::Movie
            when "tv_show"
              TvShows::TvShow
            when "channel"
              Channels::Channel
            else
              next
            end

    model.create!(
      original_title: content["original_title"],
      year: content["year"],
      duration_in_seconds: content["duration_in_seconds"],
    )
  end
end
