#!/usr/bin/env ruby

require 'prowly'
require 'logger'

api_key = File.open('~/.prowl').read
torrent_name = ENV['TR_TORRENT_NAME']

file_to_log_to = File.join("var", "log", "transmission", "notifier.log")
log = Logger.new(file_to_log_to)

log.debug "Attempting to log successful download of #{torrent_name}"  

notification = Prowly::Notification.new(:apikey => api_key, :application => "Transmission", :description => "#{torrent_name} has finished downloading!") 
result = Prowly.notify(notification)

if(result.succeeded?)
  log.debug "notification successfully sent!"
else
  log.error "notification could not be sent!"
  log.error "#{result.message}"
end
