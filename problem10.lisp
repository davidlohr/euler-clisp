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
; URL: http://projecteuler.net/problem=10
; Description: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
;
; Problem: Find the sum of all the primes below two million.

(require "math.lisp")

; TODO  - this is a slow O(n) naive version
; try with sieve of erasthones for a faster implementation!!
(defun problem-10 (num)
  (setf sum 0)
  (loop for i from 2 to num
	do (when (is-prime i) (incf sum i)))
  sum)

(print (problem-10 2000000))