signature NS_SET = sig
  type set    
  val get    : set * string -> string option
  val getOpt : set * string * string -> string
  val getAll : set * string -> string list
  val size   : set -> int
  val unique : set * string -> bool       
  val key    : set * int -> string option    
  val value  : set * int -> string option
  val list   : set -> (string * string) list
  val filter : (string*string->bool) -> set 
               -> (string*string) list
  val foldl  : ((string*string)*'a->'a) -> 'a -> set -> 'a
  val foldr  : ((string*string)*'a->'a) -> 'a -> set -> 'a
end

(*
 [set] abstract type of sequences of key-value pairs, 
 returned by some calls to the web-server.

 [get (s,k)] returns SOME(v) if v is the first value 
 associated with key k in set s; returns NONE if no value is
 associated with k in s.

 [getOpt (s,k,v)] returns the first value associated with key 
 k in set s; returns v if no value is associated with k in s.

 [getAll (s,k)] returns all values associated with key k in
 set s; returns the empty list if no values are associated 
 with k in s.
 
 [size s] returns the number of elements in a set.

 [unique (s,k)] returns true if key k appears (exactly) once 
 in s (case sensitive). Returns false otherwise.

 [key (s,i)] returns SOME(k) if k is the key name for the 
 i'th field in the set s; returns NONE if size s <= i.

 [value (s,i)] returns SOME(v) if v is the value for the 
 i'th field in the set s; returns NONE if size s <= i.

 [list s] returns the list representation of set s.

 [filter f s] returns the list of key-value pairs in s for 
 which applying f on the pairs (from left to right) returns 
 true.

 [foldl f acc s] identical to (foldl o list).

 [foldr f acc s] identical to (foldr o list).
*)
