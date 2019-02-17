require "active_support/core_ext/string/conversions"
require "pry-byebug"

unless original_path = ARGV&.first
  raise "No path given"
end

def spec_path(orignal_path)
  path = orignal_path.sub("app", "spec")
  paths = path.split(".")
  first = paths.first + "_spec"
  first + "." + paths.last
end

def class_name(original_path)
  original_path.split(".").first.sub(/app\/\w+\//, "").camelize
end

def create_file(path)
  dir_path = path.split("/")
  dir_path.pop
  dir_path = dir_path.join("/")
  `mkdir -p #{dir_path}`
  `touch #{path}`
end

print "File to create: "
print spec_path(original_path)
print "\n"
print "Class name: #{class_name(original_path)}"
print "\n"

create_file(spec_path(original_path))
