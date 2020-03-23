require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.
  # see module Psych https://docs.ruby-lang.org/en/master/Psych.html#method-c-load_file

  # load_file(filename, fallback: false)
  
  # Load the document contained in filename. 
  # Returns the yaml contained in filename as a Ruby object,
  # or if the file is empty, it returns the specified 
  # fallback return value, which defaults to false.