

//-------------دالة قائمة----------------------------------
دالة قائمة حجم
ارجع list(حجم)

//-------------دالة اضافة----------------------------------
دالة اضافة قائمة,غرض
ارجع add(قائمة,غرض)

//-------------دالة طول----------------------------------
دالة طول قائمة
ارجع len(قائمة)

//-------------دالة طول_عربي----------------------------------
دالة طول_عربي قائمة
ارجع len(قائمة)/2

//-------------دالة هل_الصف_فارغ----------------------------------
دالة هل_الصف_فارغ قائمة
	الحجم = طول(قائمة)
	اذا الحجم = 0
		ارجع 1
	والا
		ارجع 0
	نهاية
ارجع


//-------------دالة حذف----------------------------------
دالة حذف قائمة,رقم_الخانة
ارجع del(قائمة,رقم_الخانة)

//-------------دالة ايجاد----------------------------------
دالة ايجاد قائمة,قيمة_الغرض
ارجع find(قائمة,قيمة_الغرض)

//-------------دالة ايجاد----------------------------------
دالة ايجاد2 قائمة,قيمة_الغرض, رقم_العمود
ارجع find(قائمة,قيمة_الغرض,رقم_العمود)

//-------------دالة ايجاد----------------------------------
دالة ايجاد3 قائمة,قيمة_الغرض, رقم_العمود, صفة
ارجع find(قائمة,قيمة_الغرض,رقم_العمود, صفة)

//-------------دالة بحث_ثنائي----------------------------------
دالة بحث_ثنائي قائمة,قيمة_الغرض
ارجع BinarySearch(قائمة,قيمة_الغرض)

//-------------دالة بحث_ثنائي----------------------------------
دالة بحث_ثنائي2 قائمة,قيمة_الغرض, رقم_العمود
ارجع BinarySearch(قائمة,قيمة_الغرض, رقم_العمود)

//-------------دالة ترتيب----------------------------------
دالة ترتيب قائمة
ارجع sort(قائمة)

//-------------دالة ترتيب----------------------------------
دالة ترتيب2 قائمة,قيمة_الغرض, رقم_العمود
ارجع sort(قائمة,قيمة_الغرض,رقم_العمود)

//-------------دالة ترتيب----------------------------------
دالة ترتيب3 قائمة,قيمة_الغرض, رقم_العمود, وصف
ارجع sort(قائمة,قيمة_الغرض,رقم_العمود, وصف)

//-------------دالة عكس----------------------------------
دالة عكس قائمة
ارجع reverse(قائمة)

//-------------دالة ادخال----------------------------------
دالة ادراج قائمة, رقم_العمود, الغرض
ارجع Insert(قائمة, رقم_العمود, الغرض)

//-------------دالة استبدال----------------------------------
دالة استبدال قائمة, رقم_العمود_الاول, رقم_العمود_الثاني
ارجع swap(قائمة, رقم_العمود_الاول, رقم_العمود_الثاني)
