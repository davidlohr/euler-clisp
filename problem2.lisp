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
; URL: http://projecteuler.net/problem=2
; Description: Each new term in the Fibonacci sequence is generated by
;              adding the previous two terms.
;              By starting with 1 and 2, the first 10 terms will be:
;                     1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;
; Problem: By considering the terms in the Fibonacci sequence whose values
;          do not exceed four million find the sum of the even-valued terms.

(require "math.lisp")

(defun problem-2 (max)
  (setf a 0)
  (setf sum 0)
  (loop
   (setf num (fibonacci (incf a)))
   (if (evenp num)
       (incf sum num))
   (when (> num max) (return sum))))

(print (problem-2 4000000))