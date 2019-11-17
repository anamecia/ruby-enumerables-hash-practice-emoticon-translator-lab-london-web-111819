# require modules here
require "yaml"
require 'pp'

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  get_meaning={}
  get_emoticon={}
  emoticons.each do |key,value|
    get_meaning[value[1]] = key
    get_emoticon[value[0]] = value[1]
  end 
  
  {:get_meaning => get_meaning , :get_emoticon =>get_emoticon }
  
end

'lib/emoticons.yml'

def get_japanese_emoticon (yaml_file_path, emoticon)
  # code goes here
  emoticons_hash = load_library(yaml_file_path)
  result = emoticons_hash[:get_emoticon][emoticon]
  if result == nil 
    return 'Sorry, that emoticon was not found'
  end
  result
end

def get_english_meaning(yaml_file_path,emoticon)
  # code goes here
  meaning_hash = load_library(yaml_file_path)
  result = meaning_hash[:get_meaning][emoticon]
  if result == nil 
    return 'Sorry, that '
  end
  result
end