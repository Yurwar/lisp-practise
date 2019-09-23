; Задание 1.
; Описать неименованную функцию для объединения голов трех списков в один список, исходные данные
; взять из таблицы 4.
;
; Исходные списки:
; (H G (2 3) 8 7 (T R)) 
; (2 1 (+ 4 5))
; (TY PE CH AR RE AL (H G)))
; 
; Вывод:
; (H 2 TY)
    
(setq firstlist '(H G (2 3) 8 7 (T R)))
(setq secondlist '(2 1 (+ 4 5)))
(setq thirdlist '(TY PE CH AR RE AL (H G)))
 
(print 
((lambda (x y z) 
        (list (car x) (car y) (car z)))
          firstlist secondlist thirdlist))
