# Haskell

;2. Определите функцию, возвращающую последний элемент списка.
last_elem (h:[]) = h
last_elem (h:t) = last_elem t 

main = print $ (last_elem [1, 2, 3])

;7. Определите функцию, удаляющую из исходного списка элементы с четными номерами.
del_even [] = []
del_even (h:[]) = [h]
del_even (h1:h2:t) = h1 : del_even t

main = print $ (del_even [1, 2, 3, 4, 5, 6])

;16. Определите функцию, добавляющую элементы одного списка во второй список, начиная с заданной позиции.
insert_list l1 [] 0 = l1
insert_list l1 l2 0 = l2 ++ l1
insert_list (h1:t1) l2 n = h1 : insert_list t1 l2 (n - 1)

main = print $ (insert_list [1, 2, 6, 7] [3, 4, 5] 2)

;25. Определите функцию, удаляющую из списка каждый четный элемент.
del_evens [] = []
del_evens (h:t) = 
    if  (rem h 2) == 0 
        then del_evens t
        else h : del_evens t
    
main = print $ (del_evens [1, 2, 3, 4])
