; Задание 2.
; Описать именованную функцию для создания нового списка из элементов нескольких исходных
; списков. В качестве исходных списков использовать списки таблицы 4. Номера элементов списков взять
; в таблице 5.
; Исходные списки:
; (H G (2 3) 8 7 (T R)) 
; (2 1 (+ 4 5))
; (TY PE CH AR RE AL (H G)))
;
; Номера элементов:
; 3 3 3

(setq firstlist '(H G (2 3) 8 7 (T R)))
(setq secondlist '(2 1 (+ 4 5)))
(setq thirdlist '(TY PE CH AR RE AL (H G)))

(defun task2(x y z)
  (list 
    (car (cdr (cdr x)))
    (car (cdr (cdr y)))
    (car (cdr (cdr z)))))

(print (task2 firstlist secondlist thirdlist))