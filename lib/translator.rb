# require modules here

def load_library(file)
  require "yaml"
  library = YAML.load_file(file)
  emoji_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    emoji_hash["get_meaning"][emoticons[1]] = meaning
    emoji_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  emoji_hash

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end