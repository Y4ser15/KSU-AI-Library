Loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"


عنصر رصة من قائمة

قائمة = []


دالة تعريف_رصة س
اذا (هل_رقم(س) او هل_جملة(س) او هل_قائمة(س))
قائمة = س
والا
انذار("خطأ: عنصر رصة - دالة تعيين - معامل خاطئ")
نهاية

دالة ادفع س
اضافة(قائمة, س)

دالة اسحب
غرض = قائمة[طول(قائمة)]
حذف(قائمة, طول(قائمة))
ارجع غرض

دالة طباعة
كررمن ر = طول(قائمة) الى 1 بمدى -1
اطبع قائمة[ر] + سطرجديد
تالي