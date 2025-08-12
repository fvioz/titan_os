Users::User.find_or_create_by!(email: "test@test.com") do |user|
  user.name = "test"
  user.password = 'password'
end

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

    object = model.find_or_create_by!(original_title: content["original_title"]) do |obj|
      obj.year = content["year"]
      obj.duration_in_seconds = content["duration_in_seconds"]
    end

    if content["type"] != "tv_show"
      puts "Seeding #{content["type"]} availability for #{object.original_title}..."

      content["availabilities"].each do |availability|
        object.availabilities.find_or_create_by!(
          app: Apps::App.find_or_create_by!(name: availability["app"]),
          market: availability["market"]
        )
      end
    end
  end
end
