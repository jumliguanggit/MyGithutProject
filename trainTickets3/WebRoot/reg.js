function check_name(form)
	{
		if(form.username.value=="")
		{
			alert("����д������ʵ����!");
			form.username.focus();
			return false;
		}
		if(form.username.value.length<6 || form.username.value.length>20)
		{
			alert("�û����ĳ��ȱ�����6-20֮�䣡");
			form.username.focus();
			return false;
		}
	}
	function check_info(form)
	{
		if(form.password.value=="")
		{
			alert("����д��������!");
			form.password.focus();
			return false;
		}
		if(form.password2.value=="")
		{
			alert("��ȷ����������");
			form.password2.focus();
			return false;
		}
		if(form.password2.value != form.password.value)
		{
			alert("�������벻һ�£���������д");
			form.password2.focus();
			return false;
		}
		
		if(form.telphone.value=="")
		{
			alert("������������ϵ�绰");
			form.telphone.focus();
			return false;
		}
		if(form.telphone.value.length>15)
		{
			alert("����ĵ绰���룬��������д���ĵ绰��");
			form.telphone.focus();
			return false;
		}
		if(isNaN(form.telphone.value) || form.telphone.value.indexOf('.',0)!=-1)
		{
			alert("�벻Ҫ����Ƿ��ַ�");
			form.telphone.focus();
			return false;
		}	

		if(form.email.value.indexOf("@")==-1 ||(form.email.value.indexOf(".")==-1))
		{
			alert("�����Email��ʽ������д��ȷ�ĵ�������");
			form.email.focus();
			return false;
		}
	}