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
; URL: http://projecteuler.net/problem=1
; Description: If we list all the natural numbers below 10 that are multiples
;              of 3 or 5, we get 3, 5, 6 and 9.The sum of these multiples is 23.
;
; Problem: Find the sum of all the multiples of 3 or 5 below 1000.

(defun problem-1 (n m)
  (setf sum 0)
  (loop for i from n to (- m 1)
	do (when (or (= 0 (mod i 3))
		     (= 0 (mod i 5)))
	     (incf sum i)))
  sum)

(print (problem-1 1 1000))
