;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname video_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Ejemplo 1
(+ 1 1)
(* 2 2)

; Ejemplo 2
(/ 4 2)
(/ 2 4)

; Ejemplo 3
"¡Hola mundo!"

; Ejemplo 4
(string-append "¡Hola " "mundo!")

; Ejemplo 5
(> 5 1)
(> 1 5)
(= 4 4)
(>= 5 4)
(string=? "Hola" "hola")

; Ejemplo 6
(and #true #true)
(and #true #false)
(or #true #false)
(or #false #false)

; Ejemplo 7
;((5 + (20 + (4 * 2))) / 3)
;               ^
;   ((5 + (20 + 8)) / 3)
;             ^
;       ((5 + 28) / 3)
;          ^
;        (33 / 3)
;            ^
;           11

; Ejemplo 8
;(/ () 3)
;(/ (+ 5 () 3)
;(/ (+ 5 (+ 20 ()) 3)
(/ (+ 5 (+ 20 (* 4 2)) 3)

; Ejemplo 9
(+ 1 (+2 (+ 3 (+ 4 5))))
(+ 1 2 3 4 5)
(- 10 5 4 1)
(/ 1 2 3)
(string-append "¡" "Hola" " " "mundo" "!")
   
; Ejemplo 10
(string-length "programa")
(> 7 (string-length "programa"))

