(setq a_number 600851475143)
(setq sqrt_a_number (sqrt a_number))

(setq largest_prime_number_found 1)

(defun is_prime (x_number)
  (setq sqrt_x_number (sqrt x_number))
  (setq i 2)
  (loop
    (cond
      ((= x_number 1)(return NIL))
      ((> i sqrt_x_number)(return T))
      ((= 0 (mod x_number i))(return NIL))
      )
    (setq i (+ i 1))
    )
  )

(setq j 2)
(loop
  (setq j (+ j 1))
  (if (and (= 0 (mod a_number j)) (is_prime j)) (setq largest_prime_number_found j))
  (if (> j sqrt_a_number) (return NIL))
  )

(print largest_prime_number_found)
