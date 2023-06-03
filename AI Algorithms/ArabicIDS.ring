loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"
حمل "ArabicClasses.ring"
حمل "AINode.ring"
حمل "Number_problem.ring"

زيارة = 0
توليد = 0
العمق_الحالي = 1
دالة بحث_تعمق_متكرر مشكلة
	اول_خلية = انشاء خلية_الذكاء_الاصطناعي
	اول_خلية.الحالة = مشكلة.الحالة_البدائية

	الحاوية = انشاء رصة
	الحاوية.ادفع(اول_خلية)
	طالما ( ! الحاوية.فارغ())
		الخلية_الحالية = الحاوية.اسحب()
				زيارة++
		اذا مشكلة.اختبار_الهدف(الخلية_الحالية.الحالة)
اضافة(الخلية_الحالية.الحل, الخلية_الحالية.الحالة)
			ارجع الخلية_الحالية
		نهاية

اذا الخلية_الحالية.العمق < العمق_الحالي
		الابناء = مشكلة.توليد(الخلية_الحالية.الحالة)
		كررمن ن=طول(الابناء) الى 1 بمدى -1
			خلية = انشاء خلية_الذكاء_الاصطناعي{
				الحالة = الابناء[ن]
الحل = الخلية_الحالية.الحل
				العمق = الخلية_الحالية.العمق + 1
}
خلية.الاب = الخلية_الحالية
اضافة(خلية.الحل, الخلية_الحالية.الحالة)
			الحاوية.ادفع(خلية)
توليد++
		التالي
نهاية
	نهاية
العمق_الحالي++
ارجع بحث_تعمق_متكرر(مشكلة)

دالة طباعة_بحث_تعمق_متكرر مشكلة

حل_المشكلة = بحث_تعمق_متكرر(مشكلة)

	اطبع "طريق حل المشكلة باستخدام بحث_تعمق_متكرر هو: "
	كررمن ر = 1 الى طول(حل_المشكلة.الحل)
		اطبع حل_المشكلة.الحل[ر]

		اذا ر != طول(حل_المشكلة.الحل)
			اطبع "-->"
		نهاية
	التالي
اطبع سطر + "عمق الحل: " + حل_المشكلة.العمق + سطر
	اطبع "تمت زيارة: " + زيارة + " خلية" + سطر
	اطبع "تم توليد: " + توليد + " خلية" + سطر





