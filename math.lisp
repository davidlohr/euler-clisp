;
;  Copyright (C) 2012 Davidlohr Bueso <dave@gnu.org>
;
;  General purpose math functions - used throughout the problems.
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

(defun factorial (n)
  (if (zerop n)
      1
    (* n (factorial (- n 1)))))

(defun fibonacci (x)
  (if (<= x 2)
      1
    (+ (fibonacci (- x 2)) (fibonacci (- x 1)))))

(defun is-prime (num)
  (if (< 2 num)
      (do ((dividend 2 (1+ dividend))
	   (chk-to (sqrt num)))
	  ((equal (rem num dividend) 0))
	(when (<= chk-to dividend)
	  (return t)))
    t)
  )