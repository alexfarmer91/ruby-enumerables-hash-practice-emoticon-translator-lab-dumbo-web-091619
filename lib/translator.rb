# require modules here

def load_library(file)
  require "yaml"
  yaml_file = YAML.load_file(file)
  
  emoji_hash = {
    :get_meaning => yaml_file.keys,
    :get_emoticon =>
  }
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end