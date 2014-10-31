track_dir = Dir["../**/*.mp3"]
track_dir.each do |dir|
  Track.create(title: dir.match(/(\w+)\.mp3/)[1], link: File.expand_path(dir))
end