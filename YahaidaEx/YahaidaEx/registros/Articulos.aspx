<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="YahaidaEx.registros.Articulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            display: block;
            width: 105%;
            height: 47px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style3 {
            color: #555555;
            background-color: #FFFFFF;
            width: 297px;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: right;
            font-size: large;
            width: 474px;
        }
        .auto-style6 {
            color: #555555;
            background-color: #FFFFFF;
            width: 262px;
        }
        .auto-style8 {
            text-align: right;
            width: 474px;
        }
        .auto-style10 {
            width: 262px;
            text-align: center;
        }
        .auto-style11 {
            width: 297px;
        }
        .auto-style12 {
            text-align: left;
            width: 297px;
        }
        .auto-style13 {
            width: 262px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

  

    <table style="width:100%;">
        <tr>
            <td class="auto-style5"><strong>Id</strong></td>
            <td class="auto-style6">
                :
                <asp:TextBox ID="txtId" runat="server" class="form-control" TextMode="Number" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnBuscarArticulos" runat="server" Text="Buscar" class="btn btn-info" />
            </td>
            <td aria-readonly="False"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td aria-readonly="False">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong><span class="auto-style4">Descripcion:</span></strong> </td>
            <td class="auto-style13">
                <textarea id="TextAreaDescripcion" class="auto-style2" class="auto-style1" name="S1"></textarea></td>
            <td class="auto-style11">
                &nbsp;</td>
            <td aria-readonly="False">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td aria-readonly="False">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong><span class="auto-style4">Existencia</span></strong>:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txt" runat="server" class="form-control" Height="29px" Width="258px"></asp:TextBox>
            </td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong><span class="auto-style4">Precio</span></strong>:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtPrecio" runat="server" class="form-control" Width="255px" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="BtnGuardarArticulos" runat="server" Text="Guardar" class="btn btn-primary"/>
            </td>
            <td class="auto-style10">
                <asp:Button ID="btnEditarArticulos" runat="server" Text="Editar" class="btn btn-warning" />
            </td>
            <td class="auto-style12">
                <asp:Button ID="btnEliminarArticulos" runat="server" Text="Eliminar" class="btn btn-danger"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
