
حمل "../ArabicFunctions.ring"

عنصر طابور من قائمة

قائمة = []






دالة تعريف_طابور س
اذا (هل_رقم(س) او هل_جملة(س) او هل_قائمة(س))
قائمة = س
والا
انذار("خطأ: عنصر طابور - دالة تعيين - معامل خاطئ")
نهاية

دالة احذف
غرض = قائمة[1]
حذف(قائمة, 1)
ارجع غرض

