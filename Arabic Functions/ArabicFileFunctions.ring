loadsyntax "ArabicSyntax.ring"

//-------------دالة اقرأ----------------------------------
دالة اقرا ملف
ارجع Read(ملف)

//-------------دالة اكتب----------------------------------
دالة اكتب ملف, جملة
ارجع Write(ملف, جملة)

//-------------دالة محتويات----------------------------------
دالة محتويات المسار
ارجع Dir(المسار)

//-------------دالة غير الاسم----------------------------------
دالة غير_الاسم اسم_الملف_القديم, اسم_الملف_الجديد
ارجع rename(اسم_الملف_القديم, اسم_الملف_الجديد)

//-------------دالة احذف الملف----------------------------------
دالة احذف_الملف ملف
ارجع Remove(ملف)

//-------------دالة افتح الملف----------------------------------
//الوضع يكونء(r,w,a,r+,w+,a+ one of these letters each opens in a different Mode)
//no idea how to make the letters in arabic...
دالة افتح_الملف ملف, الوضع
ارجع Fopen(ملف, الوضع)

//-------------دالة اغلق الملف----------------------------------
دالة اغلق_الملف رقم_الملف_المرجعي
ارجع Fclose(رقم_الملف_المرجعي)

//-------------دالة تدفق الملف----------------------------------
دالة تدفق_الملف رقم_الملف_المرجعي
ارجع Fflush(رقم_الملف_المرجعي)

//-------------دالة اعد فتح الملف----------------------------------
دالة اعد_فتح_الملف ملف, الوضع, رقم_الملف_المرجعي
ارجع Freopen(ملف, الوضع, رقم_الملف_المرجعي)

//-------------دالة ملف مؤقت----------------------------------
ملف_مؤقت = Tempname()

//-------------دالة بحث في الملف----------------------------------
//شرح قيم من__حيث: 0 = بداية الملف, 1 = المكان الحالي, 2 = نهاية الملف.
دالة بحث_في_الملف رقم_الملف_المرجعي, رقم_معادل, من_حيث
ارجع Fseek(رقم_الملف_المرجعي, رقم_معادل, من_حيث)

//-------------دالة مكان الملف----------------------------------
دالة مكان_الملف رقم_الملف_المرجعي
ارجع Ftell(رقم_الملف_المرجعي)

//-------------دالة بداية الملف----------------------------------
دالة بداية_الملف رقم_الملف_المرجعي
ارجع Rewind(رقم_الملف_المرجعي)

//-------------دالة مكان الملف المرجعي----------------------------------
دالة مكان_الملف_المرجعي رقم_الملف_المرجعي
ارجع Fgetpos(رقم_الملف_المرجعي)

//-------------دالة تعيين مكان الملف----------------------------------
دالة تعيين_مكان_الملف رقم_الملف_المرجعي, رقم_مكان_الملف_المرجعي
ارجع Fsetpos(رقم_الملف_المرجعي, رقم_مكان_الملف_المرجعي)

//-------------دالة ازالة اخطاء الملف----------------------------------
دالة ازالة_اخطاء_الملف رقم_الملف_المرجعي
ارجع Clearerr(رقم_الملف_المرجعي)

//-------------دالة هل نهاية الملف----------------------------------
دالة هل_نهاية_الملف رقم_الملف_المرجعي
ارجع Feof(رقم_الملف_المرجعي)

//-------------دالة مؤشر خطا الملف----------------------------------
دالة مؤشر_خطا_الملف رقم_الملف_المرجعي
ارجع Ferror(رقم_الملف_المرجعي)

//-------------دالة طباعة خطا الملف----------------------------------
دالة طباعة_خطا_الملف رسالة_الخطأ
ارجع Perror(رسالة_الخطأ)

//-------------دالة الحرف التالي للملف----------------------------------
دالة الحرف_التالي_للملف رقم_الملف_المرجعي
ارجع Fgetc(رقم_الملف_المرجعي)

//-------------دالة الجملة التالية للملف----------------------------------
دالة الجملة_التالية_للملف رقم_الملف_المرجعي, حجم_الجملة
ارجع Fgets(رقم_الملف_المرجعي, حجم_الجملة)

//-------------دالة طباعة حرف للملف----------------------------------
دالة طباعة_حرف_للملف رقم_الملف_المرجعي, الحرف
ارجع Fputc(رقم_الملف_المرجعي, الحرف)

//-------------دالة طباعة جملة للملف----------------------------------
دالة طباعة_جملة_للملف رقم_الملف_المرجعي, الجملة
ارجع Fputs(رقم_الملف_المرجعي, الجملة)

//-------------دالة دفع حرف للملف----------------------------------
دالة دفع_حرف_للملف رقم_الملف_المرجعي, الحرف
ارجع Ungetc(رقم_الملف_المرجعي, الحرف)

//-------------دالة قراءة من الملف----------------------------------
دالة قراءة_من_الملف رقم_الملف_المرجعي, حجم_المقروء
ارجع Fread(رقم_الملف_المرجعي, حجم_المقروء)

//-------------دالة كتابة على الملف----------------------------------
دالة كتابة_على_الملف رقم_الملف_المرجعي, الجملة
ارجع Fwrite(رقم_الملف_المرجعي, الجملة)

//-------------دالة هل يوجد الملف----------------------------------
دالة هل_يوجد_الملف رقم_الملف_المرجعي
ارجع Fexists(رقم_الملف_المرجعي)

//-------------دالة هل يوجد الدليل----------------------------------
دالة هل_يوجد_الدليل المسار
ارجع Direxists(المسار)

//-------------دالة نوع المسار----------------------------------
//0 = لايوجد المسار, 1 = ملف, 2 = دليل, -1 يوجد مسار غير معلوم النوع
دالة نوع_المسار المسار
ارجع Getpathtype(المسار)

//-------------دالة حجم الملف----------------------------------
دالة حجم_الملف رقم_الملف_المرجعي
ارجع Getfilesize(رقم_الملف_المرجعي)

//-------------دالة رقم صحيح الى ارقام ثنائية----------------------------------
دالة رقم_صحيح_الى_ارقام_ثنائية رقم
ارجع Int2Bytes(رقم)

//-------------دالةارقام ثنائية الى رقم صحيح----------------------------------
دالة ارقام_ثنائية_الى_رقم_صحيح رقم
ارجع Bytes2Int(رقم)

//-------------دالة عدد عشري دقيق الى ارقام ثنائية----------------------------------
دالة عدد_عشري_دقيق_الى_ارقام_ثنائية رقم
ارجع Float2Bytes(رقم)

//-------------دالةارقام ثنائية الى عدد عشري دقيق----------------------------------
دالة ارقام_ثنائية_الى_عدد_عشري_دقيق رقم
ارجع Bytes2Float(رقم)

//-------------دالة عدد عشري الى ارقام ثنائية----------------------------------
دالة عدد_عشري_الى_ارقام_ثنائية رقم
ارجع Double2Bytes(رقم)

//-------------دالةارقام ثنائية الى عدد عشري----------------------------------
دالة ارقام_ثنائية_الى_عدد_عشري رقم
ارجع Bytes2Double(رقم)
