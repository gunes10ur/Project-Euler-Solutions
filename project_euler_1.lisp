(setq total 0)
(loop for i from 0 to 999 do 
      (cond
        ((or (= 0 (mod i 3))(= 0 (mod i 5)))
         (setq total (+ total i)))
        )
      )
(print total)
