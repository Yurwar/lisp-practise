; Имеется 4 множества A B C и D, написать
; функцию которая преобразует данные множества по формуле (A ⋂ (B U (C \ D))). (4 вариант)

(defun f1(A B C D operator)
    (cond 
        ((equal operator "member")
            (cond 
                ((null (atom A)) nil)
                ((null (listp B)) nil)
                ((null B) nil)
                ((equal A (car B)) t)
                (t (f1 A (cdr B) nil nil "member"))))
        ((equal operator "union")
            (cond 
                ((null A) B)
                ((null B) A)
                ((f1 (car B) A nil nil "member") (f1 A (cdr B) nil nil "union"))
                (t (cons (car B) (f1 A (cdr B) nil nil "union")))))
        ((equal operator "intersect")
            (cond
                ((null A) nil)
                ((null B) nil)
                ((f1 (car B) A nil nil "member") (f1 (list (car B)) (f1 A (cdr B) nil nil "intersect") nil nil "union"))
                (t (f1 A (cdr B) nil nil "intersect"))))
        ((equal operator "minus")
            (cond
                ((null A) nil)
                ((null B) A)
                ((f1 (car A) B nil nil "member") (f1 (cdr A) B nil nil "minus"))
                (t (f1 (list (car A)) (f1 (cdr A) B nil nil "minus") nil nil "union"))))
        ((equal operator "calculate-var-4") (f1 A (f1 B (f1 C D nil nil "minus") nil nil "union") nil nil "intersect"))))

(print "Examples:")
(print "For (1 2 3 4) (3 5 6 4) (6 7) (7) result is:")
(print (f1 '(1 2 3 4) '(3 5 6 4) '(6 7) '(7) "calculate-var-4"))
(print "For (5 4 2 6 7 3) (2 6 1) (5 4 2) (4 10 6 5) result is:")
(print (f1 '(5 4 2 6 7 3) '(2 6 1) '(5 4 2) '(4 10 6 5) "calculate-var-4"))
(print "For (4 2 7 3 5) (3 6 5) (6 1 10) (11 10 3) result is:")
(print (f1 '(4 2 7 3 5) '(3 6 5) '(6 1 10) '(11 10 3) "calculate-var-4"))