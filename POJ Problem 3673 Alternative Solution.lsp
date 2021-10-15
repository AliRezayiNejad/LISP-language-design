(setq num1 "675")
(setq num2 "904")
(setq sum 0)
(loop for i across num1
     append (loop for j across num2      
          do(setq digit1 (- (char-int i) (char-int #\0)))
          do(setq digit2 (- (char-int j) (char-int #\0)))
          do(setq sum (+ sum (* digit1 digit2)))
    )
)
(print sum)
