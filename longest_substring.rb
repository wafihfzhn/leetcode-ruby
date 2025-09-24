# @param {String} s
# @return {Integer}
#
def length_of_longest_substring(string)
  seen = {}
  left = 0
  max_length = 0

  string.chars.each_with_index do |character, right|
    if seen[character] && seen[character] >= left
      left = seen[character] + 1
    end

    seen[character] = right
    max_length = [ max_length, right - left + 1 ].max
  end

  max_length
end
