def foo(name, number: 42, to_upper_case: false)
  (to_upper_case ? name.upcase : name) + number.to_s
end

def useFoo()
  [foo("a"), 
   foo("b", number: 1), 
   foo("c", to_upper_case: true),
   foo("d", number: 2, to_upper_case: true)]
end

puts useFoo

       
