حمل "../ArabicFunctions.ring"
حمل "../ArabicClasses.ring"
حمل "AINode.ring"
حمل "../Tests/Number_problem.ring"

زيارة = 0
توليد = 0

دالة بحث_عميق_اولا (مشكلة)


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

		الابناء = مشكلة.توليد(الخلية_الحالية.الحالة)

		كررمن ن=طول(الابناء) الى 1 بمدى -1
			خلية = انشاء خلية_الذكاء_الاصطناعي{
				الحالة = الابناء[ن][1]
				الاب = الخلية_الحالية
				الحل = الخلية_الحالية.الحل}

			اضافة(خلية.الحل, الخلية_الحالية.الحالة)
			الحاوية.ادفع(خلية)
		
			توليد++
		التالي
	نهاية


دالة طباعة_بحث_عميق_اولا مشكلة


	وقت_البداية = مؤقت()
	حل_المشكلة = بحث_عميق_اولا(مشكلة)
	وقت_البحث = (مؤقت() - وقت_البداية) / دقات_بالثانية()
	اطبع "طريق حل المشكلة باستخدام بحث_عميق_اولا هو: "

	كررمن ر = 1 الى طول(حل_المشكلة.الحل)
		اطبع حل_المشكلة.الحل[ر]

		اذا ر != طول(حل_المشكلة.الحل)
			اطبع "-->"
		نهاية
	التالي

	اطبع سطر + "تمت زيارة: " + زيارة + " خلية" + سطر
	اطبع "تم توليد: " + توليد + " خلية" + سطر
	اطبع "خلال: " +  وقت_البحث +" ثانية" + سطر

	زيارة = 0
	توليد = 0
	مشكلة.البعد = 0




