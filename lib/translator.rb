# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)

  e_hash = {}

  e_hash["get_emoticon"] = {}
  e_hash["get_meaning"] = {}

  emoticons.each do |word, emoticon|
    e_hash["get_emoticon"][emoticon.first] = emoticon.last
    e_hash["get_meaning"][emoticon.last] = word
  end

  return emoticons


end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
