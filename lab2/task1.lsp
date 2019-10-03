;; Вариант 19.
;; Описать функцию, которая в заданном списке заменяет все элементы-списки
;; значениями количества входящих в них элементов-символов с учетом
;; вложенных подсписков.

(defun task1 (lst)
  (cond 
    ((null lst) nil)
    ((atom (car lst)) (cons (car lst) (task1 (cdr lst))))
    ((listp (car lst)) (cons (count-el (car lst)) (task1 (cdr lst))))
    (t (cons (car lst) (task1 (cdr lst))))))

(defun count-el (lst)
  (cond
    ((null (car lst)) 0)
    ((listp (car lst)) (+ (count-el (car lst)) (count-el (cdr lst))))
    (t (+ 1 (count-el(cdr lst))))))

(print (task1 '(4 1 (5 3 (4 (5))) (4) (3 2) 9)))
