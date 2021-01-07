<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="Galeri.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }
        .auto-style2 {
            width: 698px;
            height: 225px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 97px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <h3 class="auto-style3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALFA GALERİ</h3>
        &nbsp;
        

        <td>
            <asp:ListBox ID="ListBox1" runat="server" CssClass="auto-style4" Height="262px" Width="233px">
                <asp:ListItem>PROGRAMI YAZAN FİRMA:</asp:ListItem>
                <asp:ListItem>VERSİYON:2.2.200</asp:ListItem>
        </asp:ListBox>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style1" ImageUrl="~/Image/s-2075e5a29881f19f4183ac2ecf70e5d5ccba7b14.jpg" Width="455px" />  
       </td>  <div>
           
      <table class="auto-style2" >
<thead>
<tr>
<th style="width: 5px;">
    <asp:Label ID="LabelM" runat="server" Text="Marka"></asp:Label></th>
<th>
    <asp:Label ID="LabelMo" runat="server" Text="Model"></asp:Label></th>
<th>
    <asp:Label ID="LabelY" runat="server" Text="Yıl"></asp:Label></th>
<th>
    <asp:Label ID="LabelV" runat="server" Text="Vites"></asp:Label></th>
<th class="auto-style5">
    <asp:Label ID="LabelP" runat="server" Text="Plaka"></asp:Label></th>
<th>Düzenle</th>
<th>Sil</th>
</tr>
</thead>

<tbody>
    
<asp:Repeater ID="rptarabalar" OnItemCommand="rptarabalar_ItemCommand"   runat="server">
 
<ItemTemplate>
<tr> 
<td><%# Eval("ModelAdi") %></td> 
<td><%# Eval("MarkaAdi") %></td>
<td><%# Eval("Yil") %></td>
<td><%# Eval("Vites") %></td>
<td><%# Eval("Plaka") %></td>

      
    <td>
        <asp:Button ID="Button1" CommandName="Düzenle" CommandArgument='<%# Eval("ID") %>' runat="server" Text="Düzenle" />
      </td>
    <td>
        <asp:Button ID="Button2" CommandName="Sil" CommandArgument='<%# Eval("ID") %>' runat="server" Text="Sil" />
        </td>
    
      
</tr>


   </ItemTemplate>
  
</asp:Repeater>
    <td>
        <asp:Button ID="Button3" runat="server" Text="Yeni Kayıt" OnClick="Button3_Click" /></td>
      
</tbody>
</table>
        </div>
    </form>
    <p>
        </p>
</body>
</html>
