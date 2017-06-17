package shopBeans;

import java.sql.*;
import java.util.Vector;
import shopBeans.ConnDB;
import shopBeans.Convert;

public class CartBean
{
	public String num;
	public String stime;
	public String etime;//
	public String sstation;
	public String estation;//
	public String customcount;//
	public String leftcount;//
	public String price;//
	
	
	public int p_number;
	ConnDB conn=new ConnDB();
	Convert convert=new Convert();
	Vector cart=null;//车  动态变化数据
	ResultSet rs=null;
	public Vector addCart(String num,Vector cart)
	{
		this.cart=cart;
		String sql="select stime,p_image from Product where num='"+num+"'";//通过id找
		rs=conn.doQuery(sql);
		float stime=0;
		String p_image="";
		try
		{
			if(rs.next())
			{
				stime=rs.getFloat("stime");
				p_image=rs.getString("p_image");
			}
		}
		catch(Exception e){}
		this.num=num;
		//this.stime=stime;
		this.sstation=p_image;
		this.p_number=1;//取得数据
		boolean Flag=true;
		if(cart==null)
		{
			cart=new Vector();
		}
		else
		{
			for(int i=0;i<cart.size();i++)
			{
				CartBean goodsitem=(CartBean)cart.elementAt(i);
				if(goodsitem.num.equals(this.num))
				{  
					goodsitem.p_number++;
					cart.setElementAt(goodsitem,i);
					Flag=false;
				}
			}
		}
		if(Flag)
			cart.addElement(this);
			return cart;
	}
	
	public int deleteCart(int num,Vector cart)
	{
		int id=num;
		this.cart=cart;
		if (cart==null)
		{
			return 0;
		}
		else
		{
			cart.removeElementAt(id);
			return 1;
		}
	}
	public CartBean updateCart(Vector cart,int i,String num)
	{
		this.cart=cart;
		CartBean goodsitem=(CartBean)cart.elementAt(i);
		String sum1=num;//得到修改的数量
		if(sum1!=null && sum1!="")
		{
			goodsitem.p_number=Integer.parseInt(sum1);
		}
		//sum=sum+goodsitem.p_number*goodsitem.stime;
		//cart.addElement(goodsitem);
		return goodsitem;
	}
}