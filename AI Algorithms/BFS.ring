loadsyntax "ArabicSyntax.ring"
حمل "ArabicFunctions.ring"


//انشاء قائمة طابور(queue)
صف = []

//قائمة الحل الناتج من عملية البحث
الحل = []

//حالات وحدات التخزين(الخلايا)(nodes)
حالة_بدائية = 1
حالة_انتظار = 2
حالة_منتهية = 3

//مثال مدخل
مدخل = [[0,1,0,1,1,0,0,0,0,0],
      [0,0,1,0,0,0,0,0,0,0],
      [0,0,0,0,0,1,0,0,0,0],
      [0,0,0,0,0,0,1,0,0,0],
      [0,0,0,0,0,1,0,1,0,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,1,0,0,1,0,0],
      [0,0,0,0,0,1,0,0,1,0],
      [0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0]]

//انشاء قائمة بطول المدخل
خلايا = طول(مدخل)
الحالة = قائمة(خلايا)

تنقل_بحث_سطحي_اولا()
//----------دالة تنقل بحث سطحي اولا------------------
دالة تنقل_بحث_سطحي_اولا()

	اطبع "العناصر" + خلايا + سج
	كررمن ر = 1 الى خلايا
		الحالة[ر] = حالة_بدائية
	تالي
	اطبع "ادخل نقطة بداية البحث: "
	ادخل راس
	راس = تحويل_لرقم(راس)
	بحث_سطحي_اولا(راس)
ارجع


//---------------دالة بحث سطحي اولا-----------------------------------
دالة بحث_سطحي_اولا(راس)

	اضف_للصف(راس)
	الحالة[راس] = حالة_انتظار
	طالما (ليس هل_الصف_فارغ())
		راس = احذف_من_الصف()
		الحالة[راس] = حالة_منتهية
		كررمن ن = 1 الى خلايا
			اذا مدخل[راس][ن] = 1 مع الحالة[ن] = حالة_بدائية
				اضف_للصف(ن)
				الحالة[ن] = حالة_انتظار
			نهاية
		تالي
	نهاية
	اطبع الحل
ارجع


//---------------دالة اضف_للصف-----------------------------------
دالة اضف_للصف (راس)

	اضافة(الحل,راس)
	الحجم = طول(صف)
	اذا الحجم = خلايا
		اطبع "حدث تجاوز للصف"+ سج
	والا
		اضافة(صف,راس)
	نهاية
ارجع


//-------------دالة هل_الصف_فارغ----------------------------------
دالة هل_الصف_فارغ()
	الحجم = طول(صف)
	اذا الحجم = 0
		ارجع 1
	والا
		ارجع 0
	نهاية
ارجع


//---------------دالة احذف_من_الصف-----------------------------------
دالة احذف_من_الصف()
	الحجم = طول(صف)
	اذا الحجم = 0
		اطبع "حدث تأخر للصف"+ سج
		اخرج(1)
	نهاية
	العنصر = صف[1]
	احذف_عنصر = حذف(صف,1)
ارجع العنصر






