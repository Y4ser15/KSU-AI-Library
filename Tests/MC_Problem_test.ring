loadsyntax "ArabicSyntax.ring"

عنصر مشكلة_الرجال_والمجرمون

	الرجال = 3
	المجرمون = 1
	الحالة_البدائية = [الرجال,المجرمون,0]
	التكلفة = 1
	الدلالة = 1

	

	دالة التتابع حالة 
		التابعين = []

		//الكل في اليمين
		اذا حالة = الهدف()
			اطبع "وصل الجميع"
			ارجع التابعين
		نهاية

		//القارب في اليسار
		اذا حالة[3] = 0
			رجل = حالة[1]
			مجرم = حالة[2]
			//ارسال الرجال
			ركاب = 0
			طالما ( رجل > 0 مع مجرم < رجل مع ركاب != 2)
				ركاب ++
				اضف(التابعين,[ حالة[1] - ركاب ,حالة[2] , 1] )
				رجل --
			تالي
			رجل = حالة[1]
			مجرم = حالة[2]
			//ارسال مجرمين
			ركاب = 0
			طالما ( مجرم > 0 مع مجرم <= رجل مع ركاب != 2)
				ركاب++
				اضف(التابعين,[ حالة[1] ,حالة[2]-ركاب, 1] )
				مجرم--
			تالي


		//القارب في اليمين
		والااذا حالة[3] = 1
			رجل = الرجال - حالة[1] 
			مجرم = المجرمون - حالة[2]
			//ارسال الرجال
			ركاب = 0
			طالما ( (رجل > 0  او مجرم > 0) مع مجرم =< رجل مع ركاب != 2)
				ركاب ++
				اضف(التابعين,[ حالة[1]+ركاب ,حالة[2], 0] ) 
				رجل --
			تالي
			رجل = الرجال - حالة[1]
			مجرم = المجرمون - حالة[2]
			//ارسال مجرمين
			ركاب = 0
			طالما ( (رجل > 0  او مجرم > 0) مع مجرم =< رجل مع ركاب != 2)
				ركاب ++
				اضف(التابعين,[ حالة[1] ,حالة[2]+ركاب, 0] ) 
				مجرم --
			تالي	
		نهاية
		ارجع التابعين	
				
        دالة الهدف
		ارجع [0,0,1]