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
; URL: http://projecteuler.net/problem=6
; Description: The sum of the squares of the first ten natural numbers is,
;              1**2 + 2**2 +...+10**2 = 386
;              The square of the sum of the first ten natural numbers is,
;              (1 + 2 +...+ 10)**2 = 55**2 = 3025
;              Hence the difference between the sum of the squares of the
;              first ten natural numbers and the square of the sum is
;              3025  385 = 2640.
;
; Problem: Find the difference between the sum of the squares of the first
;          one hundred natural numbers and the square of the sum.

(defun upto (max)
  (let ((result nil))
    (dotimes (i (+ max 1))
      (push i result))
    (nreverse result)))

(defun problem-6 (num)
  "returns the difference of the sum of the squares of the first num
  natural numbers and the square of the sum"
  (setq sum1 0)
  (loop for i from 1 to num
	do (incf sum1 (expt i 2)))
  (setq sum2 (reduce '+ (upto num)))
  (- (expt sum2 2) sum1))

(print (problem-6 100))