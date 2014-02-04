# Number 6
def glob_match(filenames, pattern)
  pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
  regex = Regexp.new(pattern)
  filenames.select do |filename|
	filename =~ regex
  end
end

# Test Case
print(glob_match(
["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"], "*part*rb?*"))
print("\n")

