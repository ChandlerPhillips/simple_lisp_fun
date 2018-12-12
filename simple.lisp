;CSC 415 Assignment 1
;Chandler Phillips
;8/29/18

;#1
(defun get-fourth (lst) (car (cdr (cdr (cdr lst)))))

;#2
(defun greater (a b)
  (if (> a b) a b))
;If a > b return a. If not, return b

;#3
(defun count-elem (elem lst)
  (if (eql lst '()) 0
    (if (eql (car lst) elem) (+ 1 (count-elem elem (cdr lst)))
      (count-elem elem (cdr lst)))))
;#4
(defun compress (lst)
  (compress-help (car lst) 1 (cdr lst)))

(defun compress-help (value count lst)
   (cond
    ((null lst) (list (list count value)))
    ((eql value (car lst)) (compress-help value (+ 1 count) (cdr lst)))
    (t (cons (list count value) (compress-help (car lst) 1 (cdr lst))))))

;Although I looked for help (from google) for question 4, I understand the process/function of the code. I implemented and put a twist of my own from what I learned in class. In compress-help, COND is used. This is similar to an IF statement but instead cycles though each statement until every statement is false. If no statement = true, it will then go to t. t acts as an else statement.
;I obtained help for question 4 from: https://www.informatimago.com/develop/lisp/l99/p10.lisp 





