# Joins an array of objects to a comma-separated string
# @param strings [Array<#to_s>] objects that respond to `#to_s`.
# @return [String] a comma-separated string
def join_options(strings)
  '[' + strings.join(', ') + ']'
end
