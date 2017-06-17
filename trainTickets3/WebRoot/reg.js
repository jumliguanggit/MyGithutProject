function check_name(form)
	{
		if(form.username.value=="")
		{
			alert("请填写您的真实姓名!");
			form.username.focus();
			return false;
		}
		if(form.username.value.length<6 || form.username.value.length>20)
		{
			alert("用户名的长度必须在6-20之间！");
			form.username.focus();
			return false;
		}
	}
	function check_info(form)
	{
		if(form.password.value=="")
		{
			alert("请填写您的密码!");
			form.password.focus();
			return false;
		}
		if(form.password2.value=="")
		{
			alert("请确认您的密码");
			form.password2.focus();
			return false;
		}
		if(form.password2.value != form.password.value)
		{
			alert("两次密码不一致，请重新填写");
			form.password2.focus();
			return false;
		}
		
		if(form.telphone.value=="")
		{
			alert("请输入您的联系电话");
			form.telphone.focus();
			return false;
		}
		if(form.telphone.value.length>15)
		{
			alert("错误的电话号码，请重新填写您的电话！");
			form.telphone.focus();
			return false;
		}
		if(isNaN(form.telphone.value) || form.telphone.value.indexOf('.',0)!=-1)
		{
			alert("请不要输入非法字符");
			form.telphone.focus();
			return false;
		}	

		if(form.email.value.indexOf("@")==-1 ||(form.email.value.indexOf(".")==-1))
		{
			alert("错误的Email格式，请填写正确的电子邮箱");
			form.email.focus();
			return false;
		}
	}