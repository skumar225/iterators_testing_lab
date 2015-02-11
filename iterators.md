##Descriptions of Iterators

###Instructions
Below you will find a list of methods. In the space provided below each, please provide a brief description of what this method does based upon your review of the Docs. 

###Array methods:
May be helpful to look in [Enumerable](http://ruby-doc.org/core-2.2.0/Enumerable.html) as well...

####select:
Returns array containing all elements of enum (given array), returns a true value

[4,5,6].select {|num| num.even?} # => [4,6]

####reject:
Returns array elements except those that the block has noted to reject

[4,5,6].reject {|num| num.even?} # => [5]

####map:

Returns a NEW array with results of running block code for every element in enum.

[4,5,6].map {|i| i*i} # => [16, 25, 36]

####detect:

Passes each entry in enum to block. Returns FIRST element of block that falls under the condition.

(1..10).detect { |i| i % 5 == 0}  # => 5 

####inject:

Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.

(5..10).inject { |sum, n| sum + n }  # => 45

####partition:

Returns TWO arrays, first returning what is true in the array, the second returning what is the rest.

(1..10).partition { |i| i.even? } #=> [[2,4,6,8,10], [1,3,5,7,9]]

####sort:

Returns an array containing the items in enum sorted, either to a method or using results in supplied block.

(1..10).sort { |a,b| b <=> a} # => [10,9,8,7,6,5,4,3,2,1]

%w(rhea kea flea).sort  #=> ["flea", "kea", "rhea"]

####one:

Passes each element of the collection to the given block (EXACTLY one of elements meets condition, equals true).
If no condition is passed, checks for ONE truth value. 

%w{ant bear cat}.one? { |word| word.length == 4 }  #=> true
%w{ant bear cat}.one? { |word| word.length > 4 }   #=> false
%w{ant bear cat}.one? { |word| word.length < 4 }   #=> false
[ nil, true, 99 ].one?                             #=> false
[ nil, true, false ].one?                          #=> true


####none:

Method returns true is block NEVER returns true for all elements.  If no block is given, returns true if false

%w{ant bear cat}.none? { |word| word.length == 5 } #=> true
%w{ant bear cat}.none? { |word| word.length >= 4 } #=> false
[].none?                                           #=> true
[nil].none?                                        #=> true
[nil, false].none?                                 #=> true


####all:

Method returns true if the block NEVER returns false or nil. Otherwise returns false.

%w[ant bear cat].all? { |word| word.length >= 3 } #=> true
%w[ant bear cat].all? { |word| word.length >= 4 } #=> false
[nil, true, 99].all?                              #=> false

####empty?:

Check if enum is equal to zero, but not NIL.

String length == 0

returns true 

####eql?:

Checks if two values are equal and of the same type

irb(main):013:0> val = 17
=> 17
irb(main):014:0> val == 17.0
=> true
irb(main):015:0> val.eql?(17.0)
=> false
####include?:

Check if value or object is in the enum. 

a = [ "a", "b", "c" ]
a.include?("b")   #=> true
a.include?("z")   #=> false

####nil?:

Checks to see if nil = nil

nil.nil? #=> true

###Hash methods:

####key?:

Returns true if the given key is present in the hash

h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

####keys:

Returns a new array populated with the keys from this hash

h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
h.keys   #=> ["a", "b", "c", "d"]

####delete:

Deletes the key-value pair and returns the value from hsh whose key is equal to key. 
If the key is not found, returns the default value. If the optional code block is given 
and the key is not found, pass in the key and return the result of block.

h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"

####delete_if:

Deletes every key-value pair from hsh for which block evaluates to true.
If no block is given, an enumerator is returned instead.

h = { "a" => 100, "b" => 200, "c" => 300 }
h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}

