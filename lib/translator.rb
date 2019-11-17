# require modules here
require "yaml"
require 'pp'

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  get_meaning={}
  get_emoticon={}
  emoticons.each do |key,value|
    pp key
    pp value
    get_meaning[value[1]] = key
  end  
  {:get_meaning => get_meaning , :get_emoticon =>{} }
  
end

'lib/emoticons.yml'

def get_japanese_emoticon (yaml_file_path, emoticon)
  # code goes here
  

  
   
end

def get_english_meaning
  # code goes here
end