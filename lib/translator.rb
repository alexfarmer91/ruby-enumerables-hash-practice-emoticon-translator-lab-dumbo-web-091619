require "yaml"
require 'pry'

def load_library(file)
  library = YAML.load_file(file)
  emoji_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    emoji_hash["get_meaning"][emoticons[1]] = meaning
    emoji_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end

  emoji_hash
end

def get_japanese_emoticon(file_path, emoji)
  emoji_hash = load_library(file_path)
  
  emoji_hash["get_meaning"][emoji]
  
end

def get_english_meaning
  # code goes here
end