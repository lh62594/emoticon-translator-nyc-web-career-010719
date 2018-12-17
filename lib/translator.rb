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

  return e_hash

end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticon_hash = load_library(file_path)

  # e_hash.each do |get_emoticon, get_meaning|
    get_emoticon.each do |english, japanese|
      if english == emoticon
        jap_emoticon = Japanese
      end
    end
  # end

  if jap_emoticon == ""
    return "Sorry, that emoticon was not found"
  else
    return jap_emoticon
  end

end

def get_english_meaning
  # code goes here
end
