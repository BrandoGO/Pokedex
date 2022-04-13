Public Class Pokedex
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim datasource As String = GridView1.DataSourceID.ToString()
        GridView1.DataSourceID = "DS_ConsultaGeneral"
        Page.MaintainScrollPositionOnPostBack = True
    End Sub

    Protected Sub BuscarTexto_TextChanged(sender As Object, e As EventArgs) Handles BuscarTexto.TextChanged
        Dim datasource As String = GridView1.DataSourceID.ToString()
        If datasource = "DS_ConsultaGeneral" Then
            GridView1.DataSourceID = "DS_ConsultaPorTexto"
        Else
            GridView1.DataSourceID = "DS_ConsultaGeneral"
        End If
        If BuscarTexto.Text = "" Then
            GridView1.DataSourceID = "DS_ConsultaGeneral"
        End If
    End Sub

    Protected Sub BtnInicio_Click(sender As Object, e As EventArgs) Handles BtnInicio.Click
        Response.Redirect("Pokedex.aspx")
    End Sub
End Class