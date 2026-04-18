puts '''
Boolean Eval Practice:
true && true = true
false && true = false
1 == 1 && 2 == 1 = false
"test" == "test" = true
1 == 1 || 2 != 1 = true
true && 1 == 1 = true
false && 0 != 0 = false
true || 1 == 1 = true
"test" == "testing" = false
1 != 0 && 2 == 1 = false
"test" != "testing" = true
"test" == 1 = false
!(true && false) = true
!(1 == 1 && 0 != 1) = false
!(10 == 1 || 1000 == 1000) = false
!(1 != 10 || 3 == 4) = true
!("testing" == "testing" && "Zed" == "Cool Guy") = true
1 == 1 && (!("testing" == 1 || 1 == 0)) = true
"chunky" == "bacon" && (!(3 == 4 || 3 == 3)) = false
3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")) = true
'''

puts '''
Eval Steps:
3 != 4 && !("testing" != "test" || "Ruby" == "Ruby")
true && !(true || true)
true && !true
true && false
false
'''

puts '''
Note: Any && expression that has a false is immediately false, \
so you can stop there. Any || expression that has a true is immediately true, \
so you can stop there. But make sure that you can process the whole \
expression because later it becomes helpful.
'''
