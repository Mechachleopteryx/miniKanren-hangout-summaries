Chez Scheme Version 9.4.1
Copyright 1984-2016 Cisco Systems, Inc.

> (append '(a b c) '(d e))
(a b c d e) ; out
> (load "hangout-7.scm")
> (run 1 (a d)
    (fresh (l)
      (== '(1 2 3) l)
      (== (cons a d) l)))
((1 (2 3)))
> (run 1 (a d)
    (fresh (l)
      (== (cons a d) l)))
((_.0 _.1))
> (run 1 (a d l)
    (== (cons a d) l))
((_.0 _.1 (_.0 . _.1)))
> (run 1 (q)
    (fresh (l)
      (== (car l) q)))

Exception in car: #((unbound) (scope) 13) is not a pair
Type (debug) to enter the debugger.
> (run 1 (q)
    (fresh (l)
      (== (cons l l) q)))
((_.0 . _.0))
> (run 1 (a d)
    (fresh (l)
      (== '(1 2 3) l)
      (== (cons a d) l)))
((1 (2 3)))
> (run 1 (a d)
    (fresh (l)
      (== '(1 2 3) l)
      (== `(,a . ,d) l)))
((1 (2 3)))
> 

Process scheme finished
Chez Scheme Version 9.4.1
Copyright 1984-2016 Cisco Systems, Inc.

> (load "hangout-y.scm")

Exception in load: failed for hangout-y.scm: no such file or directory
Type (debug) to enter the debugger.
> (load "hangout-7.scm")
> (run 1 (q)
    (appendo '(a b c) '(d e) q))
((a b c d e))
> (append '(a b c) '(d e))
(a b c d e)
> (run 2 (q)
    (appendo '(a b c) '(d e) q))
((a b c d e))
> (run* (q)
    (appendo '(a b c) '(d e) q))
((a b c d e))
> (run* (q)
    (appendo '(a b c) '(d e) '(a b c d e)))
(_.0)
> (run* (q)
    (appendo '(a b c) '(d e) '(a b c f e)))
()
> (run* (q)
    (appendo '(a b c) q '(a b c d e)))
((d e))
> (run* (q)
    (appendo q '(d e) '(a b c d e)))
((a b c))
> (run 1 (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e)))
> (run 2 (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e))
 ((a) (b c d e)))
> (run 6 (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e))
 ((a) (b c d e))
 ((a b) (c d e))
 ((a b c) (d e))
 ((a b c d) (e))
 ((a b c d e) ()))
> (run 7 (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e)) ((a) (b c d e)) ((a b) (c d e))
  ((a b c) (d e)) ((a b c d) (e)) ((a b c d e) ()))
> (length (run 7 (x y)
    (appendo x y '(a b c d e))))
6
> (length (run 7 (x y)
            (appendo x y '(a b c d e))))
6
> (run* (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e))
 ((a) (b c d e))
 ((a b) (c d e))
 ((a b c) (d e))
 ((a b c d) (e))
 ((a b c d e) ()))
> (run* (x y)
    (appendo x y '(a b c)))
((() (a b c))
 ((a) (b c))
 ((a b) (c))
 ((a b c) ()))
> (run* (x y z)
    (appendo x y z))
  C-c C-c
break> r
> (run 1 (x y z)
    (appendo x y z))
((() _.0 _.0))
> (append '() 5)
5
> (run 2 (x y z)
    (appendo x y z))
((() _.0 _.0)
 ((_.0) _.1 (_.0 . _.1)))
> (append '(foo) 'bar)
(foo . bar)
> (run 3 (x y z)
    (appendo x y z))
((() _.0 _.0)
 ((_.0) _.1 (_.0 . _.1))
 ((_.0 _.1) _.2 (_.0 _.1 . _.2)))
> (run* (q)
    (appendo '(a b c) `(d ,q) '(a b c d e)))
(e)
> (run* (q)
    (appendo '(a b c) `(d . ,q) '(a b c d e)))
((e))
> (run* (q)
    (appendo '(a b) `(c . ,q) '(a b c d e)))
((d e))
> (run* (x y)
    (appendo '(a . ,x) `(c . ,y) '(a b c d e)))
()
> (run* (x y)
    (appendo `(a . ,x) `(c . ,y) '(a b c d e)))
(((b) (d e)))
> (run* (x y z)
    (appendo `(a . ,x) `(c . ,y) `(,z b c d e)))
(((b) (d e) a))
> 

Process scheme finished
Chez Scheme Version 9.4.1
Copyright 1984-2016 Cisco Systems, Inc.

> (load "hangout-7.scm")
> (run 6 (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e))
 ((a) (b c d e))
 ((a b) (c d e))
 ((a b c) (d e))
 ((a b c d) (e))
 ((a b c d e) ()))
> (run 7 (x y)
    (appendo x y '(a b c d e)))
  C-c C-c
break> r
> (define appendo
    (lambda (l s out)
      (conde
        [(== '() l) (== s out)]
        [(fresh (a d res)
           (== (cons a d) l)
           (== (cons a res) out)
           (appendo d s res))])))

> (run 7 (x y)
    (appendo x y '(a b c d e)))
((() (a b c d e))
 ((a) (b c d e))
 ((a b) (c d e))
 ((a b c) (d e))
 ((a b c d) (e))
 ((a b c d e) ()))
> 