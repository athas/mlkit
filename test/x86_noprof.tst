
(*  TEST FILE

A test file is a file that mentions a set of Standard ML sources and
projects. A test file has extension `.tst'.  Entries in a test file
consists of a file name path (with extension sml, sig, or pm) followed
by a list of tokens. The following tokens are supported:

 nobasislib     ; do not import basis library
 nooptimiser    ; disable lambda optimiser
 ccl            ; compare compiler logs
 tx             ; time executable
 tc             ; time compiler
 ecte           ; expect compile time error
 prof           ; also compile and compare runtime output with 
                  profiling enabled
 gc             ; also activate garbage collection
 ue             ; expect uncaught exception

Test files may contain Standard ML like comments.

*)

(* Tests of static semantics; it would be great with some more
 * systematic testing here! *)

rank.sml            ccl       ecte    nobasislib
pat.sml             ccl     
llv.sml
weeks.sml
weeks2.sml          ccl       ecte
weeks3.sml          ccl       ecte
typerr.sml          ccl       ecte
testcon.sml         ccl       ecte
freedatatype.sml    ccl       ecte
freedatatype2.sml   ccl       ecte
sharing.sml         ccl       ecte
opaque.sml          ccl
opaque2.sml                           nobasislib
functor.sml         ccl
functor2.sml        ccl
constraint.sml
lex.sml                               nobasislib
layout.sml
anoq_Exception.sml
danwang.pm                    tc
testmatc.sml        ccl
excon.sml

(* Tests of some benchmark programs *)

kitfib35.sml            tx    gc         nobasislib
kitdangle.sml           tx               nobasislib
kitdangle3.sml          tx               nobasislib
kitreynolds2.sml        tx    gc
kitreynolds3.sml        tx    gc
kitloop2.sml            tx    gc
kittmergesort.sml       tx tc gc
kitqsort.sml            tx tc gc
kitmandelbrot.sml       tx tc gc
kitlife35u.sml          tx tc gc
klife_eq.sml            tx tc gc
kitkbjul9.sml           tx tc gc
kkb_eq.sml              tx tc gc
kkb36c.sml              tx tc gc
kitsimple.sml           tx tc gc
fft.sml                 tx tc gc
vliw.sml                tx tc gc
lexgen.sml              tx tc gc
mlyacc.pm               tx tc gc
logic.pm                tx tc gc
barnes-hut.pm           tx tc gc
nucleic.pm              tx tc gc
ray.pm                  tx tc gc
ratio-regions.sml       tx tc gc
kitmolgard.sml          tx tc gc
msort.pm                tx tc gc
tststrcmp.sml                 gc
FuhMishra.pm            tx tc gc

(* Tests of dynamic semantics and the Basis Library *)

testdyn1.sml               tc gc
check_arrays.sml              gc
array.sml                     gc
general.sml                   gc
int.sml                       gc
int31.sml                     gc
int31_2.sml                   gc   
int32.sml                     gc 
int32_2.sml                   gc
list.sml                      gc
listpair.sml                  gc
string.sml                    gc
stringcvt.sml                 gc
textio.sml                    gc
vector.sml                    gc
word8vector.sml               gc
word8array.sml                gc
bytechar.sml                  gc
time.sml                      gc
math.sml                      gc  (* ok, but not quite the 
                                         semantics of the basis 
                                         library specification *)
listsort.sml                  gc
date.sml                      gc
timer.sml                     gc
unixpath.sml                  gc
cmdline.sml                   gc
filesys.sml                   gc   (* See test/README *)
real.sml                      gc
word.sml                      gc
word8.sml                     gc
word31.sml                    gc
word32.sml                    gc 
