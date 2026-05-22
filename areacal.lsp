(defun c:areawrite ( / old_cmdecho old_osmode pt area_val area_string )
  (setq old_cmdecho (getvar "CMDECHO"))
  (setq old_osmode (getvar "OSMODE"))
  (setvar "CMDECHO" 0)
  
  (setq pt (getpoint "\nClick inside the closed area to calculate: "))
  
  (if pt
    (progn
      (setvar "OSMODE" 0)
      
      (command "-boundary" pt "")
      
      (if (entlast)
        (progn
          (command "area" "o" (entlast))
          (setq area_val (getvar "AREA"))
          
          (entdel (entlast))
          
          (setq area_string (rtos area_val 2 2))
          
          (command "-mtext" pt "J" "MC" "W" "0" area_string "")
          
          (princ (strcat "\nCalculated Area: " area_string))
        )
        (princ "\nError: Closed boundary could not be found.")
      )
    )
  )
  
  (setvar "OSMODE" old_osmode)
  (setvar "CMDECHO" old_cmdecho)
  (princ)
)
