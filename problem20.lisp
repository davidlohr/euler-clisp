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
; URL: http://projecteuler.net/problem=20
; Description: n! means n * (n - 1) * ... * 3 * 2 * 1
;              For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
;              and the sum of the digits in the number 10!
;              is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
;
; Problem: Find the sum of the digits in the number 100!

(defun factorial (n)
  (if (zerop n)
      1
    (* n (factorial (- n 1)))))

(defun problem-20 (max)
  ; a beautiful example of map/reduce usage.
  (reduce '+ (map 'list (lambda (c) (or (digit-char-p c) '-))
       (prin1-to-string (factorial max)))))

(print (problem-20 100))