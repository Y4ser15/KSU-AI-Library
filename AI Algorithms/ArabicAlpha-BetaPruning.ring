
حمل "../ArabicFunctions.ring"
حمل "../ArabicClasses.ring"
حمل "AINode.ring"
حمل "../Tests/Number_problem.ring"

زيارة = 0
توليد = 0
دالة بحث_ألف_وباء_مقصوص (مشكلة, جملة)

	الخلية_المدخلة = انشاء خلية_الذكاء_الاصطناعي
	الخلية_المدخلة.الحالة = مشكلة.الحالة_البدائية
	أ = -999999999999999
	ب = 999999999999999

	اذا (جملة = "اعلى") او (جملة = "اقصى")
		ارجع اعلى_أ_ب(مشكلة, الخلية_المدخلة,أ ,ب )
	والااذا (جملة = "ادنى") او (جملة = "اقل")
		ارجع ادنى_أ_ب(مشكلة, الخلية_المدخلة,أ ,ب )
	والا
		ارجع اعلى_أ_ب(مشكلة, الخلية_المدخلة,أ ,ب )
	نهاية


دالة اعلى_أ_ب (مشكلة, الخلية_المدخلة,أ ,ب )

	الابناء = مشكلة.خطوة(الخلية_المدخلة.الحالة)
	زيارة++

	اذا (الابناء = فراغ)
		ارجع الخلية_المدخلة.الحالة
	نهاية
	افضل_قيمة = -999999999999999

	كررمن ر=1 الى طول(الابناء)
		توليد++
		خلية = انشاء خلية_الذكاء_الاصطناعي{ الحالة = الابناء[ر] }
		خلية.الحالة = ادنى_أ_ب(مشكلة, خلية,أ ,ب )

		اذا (افضل_قيمة < خلية.الحالة)
			افضل_قيمة = خلية.الحالة
		نهاية

		اذا (أ < افضل_قيمة)
			أ = افضل_قيمة
		نهاية

		اذا (ب <= أ)
			ر = طول(الابناء)
		نهاية
	التالي
	اطبع سطر + ب + "===" + أ + "+++++" + افضل_قيمة + سطر
	ارجع افضل_قيمة


دالة ادنى_أ_ب (مشكلة, الخلية_المدخلة,أ ,ب )

	الابناء = مشكلة.خطوة(الخلية_المدخلة.الحالة)
	زيارة++

	اذا (الابناء = فراغ)
		ارجع الخلية_المدخلة.الحالة
	نهاية
	افضل_قيمة = 999999999999999

	كررمن ر=1 الى طول(الابناء)
		توليد++
		خلية = انشاء خلية_الذكاء_الاصطناعي{ الحالة = الابناء[ر] }
		خلية.الحالة = اعلى_أ_ب(مشكلة, خلية,أ ,ب )

		اذا (افضل_قيمة > خلية.الحالة)
			افضل_قيمة = خلية.الحالة
		نهاية

		اذا (ب > افضل_قيمة)
			ب = افضل_قيمة
		نهاية

		اذا (ب <= أ)
			ر = طول(الابناء)
		نهاية
	التالي
	اطبع سطر + ب + "----" + أ + "_=_=_=" + افضل_قيمة + سطر
	ارجع افضل_قيمة


دالة طباعة_بحث_ألف_وباء_مقصوص (مشكلة, جملة)


	وقت_البداية = مؤقت()
	حل_المشكلة = بحث_ألف_وباء_مقصوص(مشكلة, جملة)
	وقت_البحث = (مؤقت() - وقت_البداية) / دقات_بالثانية()

	اطبع حل_المشكلة
	اطبع سطر + "تمت زيارة: " + زيارة + " خلية" + سطر
	اطبع "تم توليد: " + توليد + " خلية" + سطر
	اطبع "خلال: " +  وقت_البحث +" ثانية" + سطر

	زيارة = 0
	توليد = 0


