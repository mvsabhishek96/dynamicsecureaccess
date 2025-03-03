
<%@ include file="connect.jsp"%>


<html>
         <% try 
	{
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s22,s33,s44,s55;
      		

	String query="select * from cloudserver  "; 
    Statement st5=connection.createStatement();
    ResultSet rs=st5.executeQuery(query);

	%>
         <h1>
         <table width="855" align="center" border="1" cellpadding="3">
	<tr><td width="155">File Name</td>
	<td width="148">Owner Name</td>
	<td width="106">Block1</td>
	<td width="106">Hash-1</td>
	<td width="106">Block2</td>
	<td width="106">Hash-2</td>
	<td width="106">Block3</td>
	<td width="106">Hash-3</td>
	<td width="106">Block4</td>
	<td width="106">Hash-4</td>
	<td width="54">SK</td>
	</tr>
	<%	
	
	
	while ( rs.next() )
{
s1=rs.getString(1);
s2=rs.getString(2);
s22=rs.getString(4);
s3=rs.getString(5);
s33=rs.getString(6);
s4=rs.getString(7);
s44=rs.getString(8);
s5=rs.getString(9);
s55=rs.getString(10);
s6=rs.getString(11);
s7=rs.getString(12);

	
			
			
			
			%>
		<tr><td><%=s1%></td><td><%=s2%></td><td><textarea cols="30" rows="5"><%=s22%></textarea></td><td><%=s3%></td><td><textarea cols="30" rows="5"><%=s33%></textarea></td><td><%=s4%></td><td><textarea cols="30" rows="5"><%=s44%></textarea></td><td><%=s5%></td><td><textarea cols="30" rows="5"><%=s55%></textarea></td><td><%=s6%></td><td><%=s7%></td></tr>	

 <%

}
	   
%>
</table>
<%
         connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>
</html>