Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxEditors

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub cmbox_DataBound(ByVal sender As Object, ByVal e As EventArgs)
		Dim defaultItem As New ListEditItem("------Select One------------", -1)
		cmbox.Items.Insert(0, defaultItem)
		cmbox.SelectedIndex = 0
	End Sub
End Class