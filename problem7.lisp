;
;  Copyright (C) 2012 Davidlohr Bueso <dave@gnu.org>
;
;  This program is free software; you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation; either version 2 of the License, or
;  (at your option) any later version.
;
;  This program is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;  GNU General Public License for more details.
;
;  You should have received a copy of the GNU General Public License along
;  with this program; if not, write to the Free Software Foundation, Inc.,
;  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
;
;
; URL: http://projecteuler.net/problem=7
; Description: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
;              we can see that the 6th prime is 13.
;
; Problem: What is the 10001st prime number?

(require "math.lisp")

(defun problem-7 (num)
  (if (<= num 1)
      2) ; always return 2, being the first prime
  (setf n 0)
  (setf i 3)
  (loop
   (if (is-prime i)
       (when (= (- num 1) (incf n)) (return i)))
     (incf i)))
    
(print (problem-7 10001))