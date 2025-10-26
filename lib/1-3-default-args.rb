# A foo function
# @param name [String]
# @param number [Integer]
# @param to_upper_case [Boolean]
# @return [String] stuff
def foo(name, number: 42, to_upper_case: false)
  (to_upper_case ? name.upcase : name) + number.to_s
end

# Calls {#foo} and returns an array of stuff
# @return [Array<String>] stuff
def use_foo
  [foo('a'),
   foo('b', number: 1),
   foo('c', to_upper_case: true),
   foo('d', number: 2, to_upper_case: true)]
end
