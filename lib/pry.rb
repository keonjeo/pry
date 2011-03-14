# (C) John Mair (banisterfiend) 2011
# MIT License

direc = File.dirname(__FILE__)

$LOAD_PATH << File.expand_path(direc)
$LOAD_PATH << "."

require "method_source"
require 'shellwords'
require "readline"
require "stringio"
require "coderay"

if RUBY_PLATFORM =~ /mswin/ || RUBY_PLATFORM =~ /mingw/
  begin
    require 'win32console'
  rescue LoadError
    $stderr.puts "Need to `gem install win32console`" 
    exit 1
  end
end

require "pry/version"
require "pry/hooks"
require "pry/print"
require "pry/command_base"
require "pry/commands"
require "pry/prompts"
require "pry/completion"
require "pry/core_extensions"
require "pry/pry_class"
require "pry/pry_instance"
