loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"
حمل "ArabicClasses.ring"


عنصر مشكلة_رقم

	الحالة_البدائية = 0
	التكلفة = 0
	الهدف = 13
	البعد = 0

	دالة اختبار_الهدف (الحالة)


		اذا الحالة = الهدف
			ارجع صح
		والا
			ارجع خطا
		نهاية


	دالة توليد حالة


		التابعين = []
		البعد++

		اذا (البعد <= الهدف)
			رابط = [حالة+1,3,-البعد - الهدف]
			اضافة(التابعين, رابط)
			رابط = [حالة+2,5,-البعد - الهدف - 1]
			اضافة(التابعين, رابط)
		والا
			رابط = [حالة+1,3,البعد]
			اضافة(التابعين, رابط)
			رابط = [حالة+2,5,البعد-1]
			اضافة(التابعين, رابط)

		نهاية

		ارجع التابعين
