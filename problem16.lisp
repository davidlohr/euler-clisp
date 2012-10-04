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
; URL: http://projecteuler.net/problem=16
; Description: 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
;
; Problem: What is the sum of the digits of the number 2**1000

(defun problem-16 (base power)
  (reduce '+ (map 'list (lambda (c) (or (digit-char-p c) '-))
       (prin1-to-string (expt base power)))))

(print (problem-16 2 1000))