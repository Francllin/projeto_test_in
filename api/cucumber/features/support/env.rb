# encoding:utf-8

require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'
require 'json'
require 'socket'


## acessar a Url da api
BASE_URL = "http://swapi.co/api"
