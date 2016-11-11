<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="rVentas.aspx.cs" Inherits="YahaidaEx.rVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 258px;
            text-align: right;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-right: 76px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 258px;
            height: 24px;
            font-size: large;
            text-align: right;
        }
        .auto-style6 {
            width: 258px;
            font-size: large;
            text-align: right;
        }
        .auto-style7 {
            width: 86px;
        }
        .auto-style8 {
            height: 24px;
            width: 86px;
        }
        .auto-style9 {
            width: 53px;
        }
        .auto-style10 {
            height: 24px;
            width: 53px;
        }
        .auto-style11 {
            width: 8px;
            font-size: large;
        }
        .auto-style12 {
            width: 8px;
        }
        .auto-style13 {
            height: 24px;
            width: 8px;
        }
        .auto-style14 {
            width: 86px;
            font-size: large;
            }
        .auto-style16 {
            width: 258px;
            font-size: large;
            text-align: center;
        }
        .auto-style17 {
            width: 53px;
            text-align: center;
        }
        .auto-style18 {
            width: 8px;
            font-size: large;
            text-align: center;
        }
        .auto-style20 {
            width: 86px;
            text-align: center;
        }
        .auto-style21 {
            width: 53px;
            text-align: left;
        }
        .auto-style24 {
            width: 8px;
            font-size: large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 95%;" align="center">
        <tr>
            <td class="auto-style16"><strong>Id</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtId" runat="server" TextMode="Number" class="form-control" Width="188px" ></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:Button ID="btnBuscarVentas" runat="server" Text="Buscar" class="btn btn-info" />
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" class="form-control" Height="32px" Width="133px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style13">
            </td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Monto</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtMonto" runat="server" TextMode="Number" class="form-control" Height="31px" Width="262px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Articulo</strong></td>
            <td class="auto-style14">
                <strong>Cantidad</strong></td>
            <td class="auto-style18">
                <strong>Precio</strong></td>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="259px" TextMode="Number" ></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="txtPrecio" runat="server" class="form-control" Width="152px" TextMode="Number"  ></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:Button ID="btnInsertar" runat="server" class="btn btn-success" Text="Add" OnClick="btnInsertar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">
                <asp:GridView ID="GvDetalle" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None" Width="291px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnGuardarVentas" runat="server" Text="Guardar" class="btn btn-primary"/>
            </td>
            <td class="auto-style7">
               <center><asp:Button ID="btnEditarVentas" runat="server" Text="Editar" class="btn btn-warning" /></center>
            </td>
            <td class="auto-style12">
                <asp:Button ID="btnEliminarVentas" runat="server" Text="Eliminar" class="btn btn-danger"/>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
