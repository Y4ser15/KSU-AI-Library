
حمل "../ArabicFunctions.ring"
حمل "../ArabicClasses.ring"

اطبع"---------مثال طابور(Queue) --------" + سطر

صف = انشاء طابور

صف.اضف(2)
صف.اضف(3)
صف.اضف(4)
صف.اضف(5)
صف.طباعة()
اطبع "========" + سطر
اطبع صف.احذف() + سطر
اطبع "========" + سطر
صف.طباعة()

اطبع"---------مثال رصة(Stack) --------" + سطر
رص = انشاء رصة

رص.ادفع(2)
رص.ادفع(3)
رص.ادفع(4)
رص.ادفع(5)
رص.طباعة()
اطبع "========" + سطر
اطبع رص.اسحب() + سطر
اطبع "========" + سطر
رص.طباعة()
/*
---------مثال طابور(Queue) --------
2
3
4
5
========
2
========
3
4
5
---------مثال رصة(Stack) --------
5
4
3
2
========
5
========
4
3
2
*/










