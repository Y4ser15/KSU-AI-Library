
loadsyntax "ArabicSyntax.ring"

//-------------دالة طول----------------------------------
دالة طول قائمة
ارجع len(قائمة)
//-------------دالة طول_عربي----------------------------------
دالة طول_عربي قائمة
ارجع len(قائمة)/2
//-------------دالة قائمة----------------------------------
دالة قائمة حجم
ارجع list(حجم)
//-------------دالة رقم----------------------------------
دالة رقم مدخل
ارجع number(مدخل)
//-------------دالة هل_حرف----------------------------------
دالة هل_حرف س
ارجع isstring(س)
//-------------دالة هل_رقم----------------------------------
دالة هل_رقم س
ارجع isnumber(س)
//-------------دالة هل_قائمة----------------------------------
دالة هل_قائمة س
ارجع islist(س)
//-------------دالة انذر----------------------------------
دالة انذر انذار
ارجع rais(انذار)
//-------------دالة غرض----------------------------------
دالة غرض س
ارجع item(س)
//-------------دالة احذف----------------------------------
دالة احذف (س)
ارجع delete(س)
//-------------دالة ازل----------------------------------
دالة ازل س
ارجع remove(س)
//-------------دالة اخرج----------------------------------
دالة اخرج س
ارجع exit(س)
//-------------دالة اضف----------------------------------
دالة اضف س,ص
ارجع add(س,ص)
//========classes============

//----------Queue class-------
عنصر صف من List
 


دالة انشاء س
اذا هل_حرف(س) او هل_رقم(س) او هل_قائمة(س)
super.انشاء(س)
والا
انذر("خطأ: عنصر صف - معامل تالف")
نهاية


دالة حذف
س = غرض(1)
احذف(1)
ارجع س
/*
//----------List class-------
عنصر قائمة من stdBase

ققائمة = []

دالة انشاء س

اذا هل_حرف(س) او هل_رقم(س)
super.انشاء([س])
والااذا هل_قائمة(س)
super.انشاء([س])
والا
انذر("خطأ: عنصر قائمة - معامل تالف")
نهاية
	

*/
