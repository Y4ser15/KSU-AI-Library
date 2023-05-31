loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"
حمل "ArabicClasses.ring"
حمل "Number_problem.ring"



عنصر خلية_الذكاء_الاصطناعي
الحالة
الاب
تكلفة_الوصول
العمق














دالة الحل الحالة

	الحل = []
	اضافة(الحل, الحالة)

	طالما الحالة.الاب != فراغ

	الحالة = الحالة.الاب
	اضافة(الحل, الحالة)

	نهاية
	//solution = solution[:-1]
	عكس(الحل)
	ارجع الحل
