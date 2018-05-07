# Haskell

;2. Определите функцию, возвращающую последний элемент списка.
last_elem (h:[]) = h
last_elem (h:t) = last_elem t 

main = print $ (last_elem [1, 2, 3])
