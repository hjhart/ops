#!/usr/bin/env ruby

require 'rubygems'
require 'prowly'
require 'logger'

api_key = File.open('/Users/james/.prowl').read
api_key.strip!

torrent_name = ENV['TR_TORRENT_NAME']

file_to_log_to = File.join("/", "var", "log", "transmission", "notifier.log")
log = Logger.new(file_to_log_to)

log.debug "Attempting to log successful download of #{torrent_name} with API key #{api_key}"  

notification = Prowly::Notification.new(:apikey => api_key, :application => "Transmission", :event => "Download completed", :description => "#{torrent_name} finished at #{Time.now}") 
result = Prowly.notify(notification)

if(result.succeeded?)
  log.debug "notification successfully sent!"
else
  log.error "notification could not be sent!"
  log.error "#{result.message}"
end
