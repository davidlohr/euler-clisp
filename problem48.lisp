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
; URL: http://projecteuler.net/problem=48
; Description: The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317
;
; Problem: Find the last ten digits of the series, 1**1 + 2**2 + 3**3 +
;           ... + 1000**1000.

(defun problem-48 (num)
  (setq res 0)
  (loop for i from 1 to num
	do (incf res (expt i i)))
  (setf str (write-to-string res))
  (parse-integer (subseq str (- (length str) 10))))


(print (problem-48 1000))