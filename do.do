use "C:\Users\xiomy\Documents\Base_Colciencas_Inputs_Limpia_V27022018_IESPadre.dta", clear
merge m:1 ies_padre using "C:\Users\xiomy\Documents\Pa lante Caribe\mpios_ies.dta"
merge m:1 ies_padre using "C:\Users\xiomy\Documents\Pa lante Caribe\matriculados.dta", gen(m)

keep if _merge==3
keep if m==3


keep if ano==2015

/*
keep if depto=="CORDOBA" | depto=="CESAR" | depto=="ATLANTICO" | depto=="BOLIVAR" | depto=="GUAJIRA" | depto=="MAGDALENA" | depto=="SAN ANDRES Y PROVIDENCIA" | depto=="BOGOTA D.C"



collapse (sum) matriculados2015 doctorado, by (depto)

gen tasa= matriculados2015/ doctorado
*/

keep if depto=="CORDOBA" | depto=="CESAR" | depto=="ATLANTICO" | depto=="BOLIVAR" | depto=="GUAJIRA" | depto=="MAGDALENA" | depto=="SAN ANDRES Y PROVIDENCIA" 
gen caribe=1

collapse (sum) matriculados2015 doctorado, by (caribe)

gen tasa= matriculados2015/ doctorado
