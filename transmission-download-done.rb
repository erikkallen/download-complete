#!/usr/bin/env ruby

require 'sys/filesystem'

def dirsize(dir)
  size = `du -c #{dir} | grep total | cut -f 1`
  return size / 1024 / 1024
end


torrent_dir = ENV['TR_TORRENT_DIR']
torrent_name = ENV['TR_TORRENT_NAME']

torrent = "#{torrent_dir}/#{torrent_name}"


# Figure out if this is a directory or file
puts "File #{File.directory? torrent} does not exit"
#if File.directory? torrent
  #torrent_file = File.open torrent
  puts "Filesize is: #{dirsize(torrent)}"
  #else
  #puts "File #{torrent} does not exit"
#end

# Find it filesize

# Categorize movie or other

# If movie checkfilesize and SxxExx
# serie
# Put in series folder
# else
# put in movies folder
# movie
