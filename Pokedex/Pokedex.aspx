<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pokedex.aspx.vb" Inherits="Pokedex.Pokedex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pokedex</title>
    <link href="Estilos.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 601px;
        }
        .auto-style3 {
            text-align: center;
            margin-left: 0px;
            width: 1455px;
        }
        .auto-style4 {
            margin-left: 0px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .auto-style5 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style7 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>

    <link rel="icon" type="image/png" sizes="16x16" href="~/img/pokedexicon.png"/>
</head>
<body>
    
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo.png" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3">
                    <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="BtnInicio" runat="server" Text="Inicio" CssClass="button button1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <span class="auto-style7">Buscar por texto</span>
                    <asp:TextBox ID="BuscarTexto" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:Button ID="Buscar" runat="server" Text="Buscar" CssClass="button button2" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                   <div class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DS_ConsultaGeneral" CssClass="auto-style4" AllowPaging="True" Width="1840px" CellPadding="4" ForeColor="#333333" PageSize="18">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Altura" HeaderText="Altura (m)" SortExpression="Altura" />
                            <asp:BoundField DataField="Peso" HeaderText="Peso (kg)" SortExpression="Peso" />
                            <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                            <asp:BoundField DataField="Habilidad" HeaderText="Habilidad" SortExpression="Habilidad" />
                            <asp:BoundField DataField="Descripcion_Habilidad" HeaderText="Descripcion de habilidad" SortExpression="Descripcion_Habilidad" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                            <asp:BoundField DataField="Debilidad" HeaderText="Debilidad" SortExpression="Debilidad" />
                            <asp:BoundField DataField="Puntos_Salud" HeaderText="Puntos de salud" SortExpression="Puntos_Salud" />
                            <asp:BoundField DataField="Ataque" HeaderText="Ataque" SortExpression="Ataque" />
                            <asp:BoundField DataField="Defensa" HeaderText="Defensa" SortExpression="Defensa" />
                            <asp:BoundField DataField="Ataque_Especial" HeaderText="Ataque especial" SortExpression="Ataque_Especial" />
                            <asp:BoundField DataField="Defensa_Especial" HeaderText="Defensa especial" SortExpression="Defensa_Especial" />
                            <asp:BoundField DataField="Velocidad" HeaderText="Velocidad" SortExpression="Velocidad" />
                            <asp:ImageField DataImageUrlField="Imagen" DataImageUrlFormatString="~/img/{0}" HeaderText="Imagen">
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="DS_ConsultaGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Pokedex %>" SelectCommand="SELECT * FROM [Pokemons]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="DS_ConsultaPorTexto" runat="server" ConnectionString="<%$ ConnectionStrings:CS_Pokedex %>" SelectCommand="SELECT Numero, Nombre, Altura, Peso, Categoria, Habilidad, Descripcion_Habilidad, Tipo, Debilidad, Puntos_Salud, Ataque, Defensa, Ataque_Especial, Defensa_Especial, Velocidad, Imagen FROM Pokemons WHERE (Nombre LIKE N'%' + @busca + N'%') OR (Categoria LIKE N'%' + @busca + N'%') OR (Habilidad LIKE N'%' + @busca + N'%') OR (Descripcion_Habilidad LIKE N'%' + @busca + N'%') OR (Tipo LIKE N'%' + @busca + N'%') OR (Debilidad LIKE N'%' + @busca + N'%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="BuscarTexto" Name="busca" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    
</body>
</html>
