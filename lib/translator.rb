# require modules here
require "yaml"
require 'pp'

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  get_meaning = []
  emoticons.each_key{|key| get_meaning << key}
end

'lib/emoticons.yml'

def get_japanese_emoticon (yaml_file_path, emoticon)
  # code goes here
  load_library(yaml_file_path).each
  
   
end

def get_english_meaning
  # code goes here
end