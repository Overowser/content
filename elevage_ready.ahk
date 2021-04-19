#include aller_enclos.ahk
#include entrer_enclos.ahk
#include sortir_enclos.ahk
#include etable_to_inv.ahk
#include select_filtre.ahk
#include select_filtre2.ahk

aller_enclos()
entrer_enclos()
;attendre de voir 250/250 montures dans l'etable puis que ça change
Select_filtre("etable","a_entrainer","m")
Select_filtre2("repro","r")
etable_to_inv() ;version compatible double filtre
Select_filtre2("ser_moy","s")
etable_to_inv() ;version compatible double filtre
sortir_enclos()
entrer_havre() ;à créer
ouvrir_coffre_h() ;à créer
;monture inv to coffre havre puis sortir du coffre
sortir_havre() ;à créer
Select_filtre("etable","a_entrainer","m")
etable_to_inv()
;fécondation