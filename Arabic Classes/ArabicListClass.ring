Loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"



عنصر قائمة

قائمة = []


دالة تعريف س

اذا (هل_رقم(س) او هل_جملة(س))
قائمة = [س]
والااذا هل_قائمة(س)
قائمة = س
والا
انذار("خطأ: عنصر قائمة - دالة تعيين - معامل خاطئ")
نهاية

دالة اضف س
اضافة(قائمة ,س )

دالة احذف س
حذف(قائمة, س)

دالة طباعة
اطبع قائمة

دالة الطول
ارجع طول(قائمة)

دالة فارغ
ارجع هل_الصف_فارغ(قائمة)

دالة قيمة س
ارجع قائمة[س]

دالة قيمة_الاول
ارجع قائمة[1]

دالة قيمة_الاخير
ارجع قائمة[طول(قائمة)]

دالة ضع الخانة, القيمة
قائمة[الخانة] = القيمة

دالة اوجد القيمة
ارجع اوجد(قائمة, القيمة)

دالة رتب
ارجع انشاء قائمة(ترتيب(قائمة))

دالة اعكس
ارجع انشاء قائمة(عكس(قائمة))

دالة ادخال الخانة, القيمة
ادخال(قائمة, الخانة, القيمة)

دالة استبدل القيمة1 , القيمة2
استبدال(قائمة ,القيمة1 ,القيمة2 )

/*some random attempts...
دالة عامل عامل_مدخل, Para

النتيجة = انشاء قائمة
انتقل عامل_مدخل

حالة "+"
اذا هل_شيء(para)
كررمن t في Para.قائمة
قائمة + t
تالي

الااذا هل_قائمة(para)
كررمن t في Para
قائمة + t
تالي
نهاية

حالة "طول"
ارجع طول(قائمة)

حالة"[]"
ارجع قائمة&[para]
نهاية
ارجع النتيجة
*/
/* not included(not sure how to include it...)
Class List From StdBase

	vValue  = []
	Func operator cOperator,Para
		result = new list
		switch cOperator
			on "+"
				if isobject(para)
					for t in Para.vValue
						vValue + t
					next
				but islist(para)
					for t in Para
						vValue + t
					next
				ok
			on "len"
				return len( vValue )
			on "[]"
				return &vValue[para]
		off
		return result

/*useless...
	Func FindinColumn nCol,value
		return std_findincolumn(vValue,value,nCol)
*/
