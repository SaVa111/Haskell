# Haskell

;2. Определите функцию, возвращающую последний элемент списка.
last_elem (h:[]) = h
last_elem (h:t) = last_elem t 

main = print $ (last_elem [1, 2, 3])

;7. Определите функцию, удаляющую из исходного списка элементы с четными номерами.
del_even [] = []
del_even (h:[]) = [h]
del_even (h1:(h2:t)) = h1 : del_even t

main = print $ (del_even [1, 2, 3, 4, 5, 6])
