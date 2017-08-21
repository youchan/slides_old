require 'drb/drb'

remote = DRbObject.new_with_uri "druby://127.0.0.1:1234"
puts remote.call
