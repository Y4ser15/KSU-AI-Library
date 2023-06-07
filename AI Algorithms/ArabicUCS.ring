loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"
حمل "ArabicClasses.ring"
حمل "AINode.ring"
حمل "Number_problem.ring"

زيارة = 0
توليد = 0

دالة بحث_باستخدام_تكلفة (مشكلة)


	اول_خلية = انشاء خلية_الذكاء_الاصطناعي
	اول_خلية.الحالة = مشكلة.الحالة_البدائية
	الحاوية = انشاء طابور
	الحاوية.اضف(اول_خلية)

	طالما ( ! الحاوية.فارغ( ))
		الخلية_الحالية = الحاوية.احذف()
		زيارة++

		اذا مشكلة.اختبار_الهدف(الخلية_الحالية.الحالة)
			اضافة(الخلية_الحالية.الحل, الخلية_الحالية.الحالة)
			ارجع الخلية_الحالية
		نهاية

		الابناء = مشكلة.توليد(الخلية_الحالية.الحالة)

		كررمن ر=1 الى طول(الابناء)
			توليد++
			خلية = انشاء خلية_الذكاء_الاصطناعي{
				الحالة = الابناء[ر][1]
				الاب = الخلية_الحالية
				تكلفة_الوصول = الخلية_الحالية.تكلفة_الوصول + الابناء[ر][2]
				الحل = الخلية_الحالية.الحل}

			اضافة(خلية.الحل, الخلية_الحالية.الحالة)

			اذا الحاوية.الطول() = 0
				الحاوية.اضف(خلية)
			والا
				 كررمن ن = 1 الى الحاوية.الطول()
					اذا الحاوية.قيمة(ن).تكلفة_الوصول > خلية.تكلفة_الوصول
						الحاوية.ادرج(ن-1, خلية)
						خروج
					والااذا ن = الحاوية.الطول()
						الحاوية.اضف(خلية)
						خروج
					نهاية
				التالي
			نهاية
		التالي
	نهاية


دالة طباعة_بحث_باستخدام_تكلفة مشكلة


	وقت_البداية = مؤقت()
	حل_المشكلة = بحث_باستخدام_تكلفة(مشكلة)
	اطبع "طريق حل المشكلة باستخدام بحث_باستخدام_تكلفة هو: "
	وقت_البحث = (مؤقت() - وقت_البداية) / دقات_بالثانية()

	كررمن ر = 1 الى طول(حل_المشكلة.الحل)
		اطبع حل_المشكلة.الحل[ر]

		اذا ر != طول(حل_المشكلة.الحل)
			اطبع "-->"
		نهاية
	التالي

	اطبع سطر + "تكلفة الوصول: " + حل_المشكلة.تكلفة_الوصول + سطر
	اطبع "تمت زيارة: " + زيارة + " خلية" + سطر
	اطبع "تم توليد: " + توليد + " خلية" + سطر
	اطبع "خلال: " +  وقت_البحث +" ثانية" + سطر

	زيارة = 0
	توليد = 0
	مشكلة.البعد = 0



