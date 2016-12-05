# require 'minitest/autorun'
require 'rest_client'
require 'json'
require "json-schema"

$:.unshift(File.dirname(__FILE__) + '/lib')
$:.unshift(File.dirname(__FILE__) + '/config')
require 'http_request.rb'
require 'json_handler.rb'