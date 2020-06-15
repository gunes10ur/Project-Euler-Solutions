(setq term_1 1)
(setq term_2 2)

(setq sum_even_valued_fibonacci 2)

(loop
  (setq term_new (+ term_1 term_2))
  (when (> term_new 4000000) (return 0))
  (cond
    ((= 0 (mod term_new 2))
     (setq sum_even_valued_fibonacci (+ sum_even_valued_fibonacci term_new)))
    )
  (cond
    ((> term_1 term_2)(setq term_2 term_new))
    ((> term_2 term_1)(setq term_1 term_new))
    )
  )

(print sum_even_valued_fibonacci)
