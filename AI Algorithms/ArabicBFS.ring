loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"
حمل "ArabicClasses.ring"
حمل "AINode.ring"
حمل "Number_problem.ring"
زيارة = 0
توليد = 0
المشكلة = انشاء مشكلة_رقم

حل_المشكلة = بحث_سطحي_اولا(المشكلة)

اطبع حل_المشكلة
اطبع "تمت زيارة: " + زيارة + " خلية" + سطر
اطبع "تم توليد: " + توليد + " خلية" + سطر

دالة بحث_سطحي_اولا مشكلة

	اول_خلية = انشاء خلية_الذكاء_الاصطناعي 
	اول_خلية.الحالة = مشكلة.الحالة_البدائية

	الحاوية = انشاء طابور
	الحاوية.اضف(اول_خلية)

	طالما ( ! الحاوية.فارغ( ))
		الخلية_الحالية = الحاوية.احذف()
		
		اذا مشكلة.اختبار_الهدف(الخلية_الحالية.الحالة)

اضافة(الخلية_الحالية.الحل, الخلية_الحالية.الحالة)
			ارجع الخلية_الحالية.الحل
		نهاية
		زيارة++
		الابناء = مشكلة.توليد(الخلية_الحالية.الحالة)
		كررمن ن=1 الى طول(الابناء)
		توليد++
			خلية = انشاء خلية_الذكاء_الاصطناعي{
				الحالة = الابناء[ن]
				التكلفة_الوصول = الخلية_الحالية.تكلفة_الوصول + مشكلة.التكلفة
				العمق = الخلية_الحالية.العمق + 1
الحل = الخلية_الحالية.الحل
}
خلية.الاب = الخلية_الحالية
اضافة(خلية.الحل, الخلية_الحالية.الحالة)
			الحاوية.اضف(خلية)
			
		التالي
	نهاية






