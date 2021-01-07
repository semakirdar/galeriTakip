<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitSil.aspx.cs" Inherits="Galeri.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
        <div>
          
        </div>
        <h3> Model Sil</h3>
       
           <tr>
               <td>
                   <asp:Label ID="Label2" runat="server" Text="..."></asp:Label>
                   <asp:Label ID="Label1" runat="server" Text=" Markalı"></asp:Label>
                   <asp:Label ID="Label3" runat="server" Text="..."></asp:Label>
                   <asp:Label ID="Label4" runat="server" Text="Model"></asp:Label>
                   <asp:Label ID="Label5" runat="server" Text="..."></asp:Label>
                   <asp:Label ID="Label6" runat="server" Text="Plakalı aracı silmek istediğinizden emin misiniz ?"></asp:Label>
                 
                   </td>
           </tr>

          <br />
        
        <td>
            <asp:Button ID="ButtonVazgeç" runat="server" CommandName="Vazgeç" CommandArgument='<%# Eval("ID") %>' Text="Vazgeç" OnClick="ButtonVazgec_Click" />

            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               
                   <asp:Button ID="ButtonSil" runat="server" CommandName="Sil" CommandArgument='<%# Eval("ID") %>' Text="Sil" OnClick="ButtonSil_Click" />
        </td>
      
        
    </form>
    
           
</body>
</html>
