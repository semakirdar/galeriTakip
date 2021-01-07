<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitduzenle.aspx.cs" Inherits="Galeri.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 768px;
            height: 347px;
        }
        .auto-style4 {
            width: 765px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3 class="auto-style4">Model Güncelle</h3>
        <div>

        </div>
        
        
        
        <table width:50%" class="auto-style3">
           <asp:HiddenField ID="HiddenField1" runat="server" Value="1" />
               
            <tr>
               <td>Marka Adı</td>
                <td>
                    <asp:TextBox ID="txtModelAdi" runat="server"></asp:TextBox></td>
                
            </tr>

             <tr>
                <td> Model Adı</td>
                <td>
                    <asp:TextBox ID="txtMarkaAdi" runat="server"></asp:TextBox></td>
                 </tr>
             <tr>
                <td><b>
                    <asp:Label ID="Label3" runat="server" Text="Yıl"></asp:Label></b></td>
                <td>
                    <asp:TextBox ID="txtYil" runat="server"></asp:TextBox></td>
                 </tr>
           
              <tr>

                <td><b>
                    <asp:Label ID="Label4" runat="server" Text="Vites"></asp:Label></b></td>
                  <td>
                      <asp:TextBox ID="txtVites" runat="server"></asp:TextBox></td>
                  </tr>
            <tr>

                <td><b>
                    <asp:Label ID="Label5" runat="server" Text="Plaka"></asp:Label></b></td>
                <td>
                    <asp:TextBox ID="txtPlaka" runat="server"></asp:TextBox></td>

                <td>
                    <asp:Button ID="btnKaydet" runat="server" Text="KAYDET" OnClick="btnKaydet_Click"/></td>
                </tr>

               
   
             
        </table>
            
    </form>
</body>
</html>
