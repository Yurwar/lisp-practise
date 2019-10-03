;; Вариант 1.
;; Сортировка простыми включениями.

(defun insertion-sort (lst)
  (if (null lst)
    lst
    (insert (car lst) (insertion-sort (cdr lst)))))

(defun insert (item lst)
  (if (null lst)
    (cons item nil)
    (if (< item (car lst))
      (cons item lst)
      (cons (car lst) (insert item (cdr lst))))))

(print (insertion-sort '(5 3 8 4 4 1 3 6)))