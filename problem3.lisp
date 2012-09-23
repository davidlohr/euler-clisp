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
; URL: http://projecteuler.net/problem=3
; Description: The prime factors of 13195 are 5, 7, 13 and 29.
; Problem: What is the largest prime factor of the number 600851475143 ?

(defun is-prime (num)
  (if (< 2 num)
      (do ((dividend 2 (1+ dividend))
	   (chk-to (sqrt num)))
	  ((equal (rem num dividend) 0))
	(when (<= chk-to dividend)
	  (return t)))
    t)
  )

(defun problem-3 (num)
  (loop for i from (floor (sqrt num)) downto 1
	do (when (zerop (mod num i))
	     ; we can return after finding just the first prime
	     ; factor as we start iterating in decreasing order.
	     (when (is-prime i) (return i)))))

(print (problem-3 600851475143))