Imports System.Data
Imports System.Data.OleDb
Imports FireSharp.Config
Imports FireSharp.Response
Imports FireSharp.Interfaces
Imports Newtonsoft.Json
Imports System.Web.Script.Serialization
Imports System.ComponentModel
Imports System.IO

Public Class _Default
    Inherits System.Web.UI.Page

    Private fcon As New FirebaseConfig() With
        {
    .AuthSecret = "s0ZY64v97y4wyMJLDvKJfI5eBbmJAW8HVOpUFqzk",
    .BasePath = "https://bus-book-b2b05-default-rtdb.firebaseio.com/"
        }
    Private client As IFirebaseClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            client = New FireSharp.FirebaseClient(fcon)
        Catch
            MsgBox("there was a problem in internet connection")
        End Try
    End Sub

    Protected Sub loginbttn_Click(sender As Object, e As EventArgs) Handles loginbttn.Click

        If studentNoTbx.Text = String.Empty Then
            studentErrlbl.Visible = True
        Else
            studentErrlbl.Visible = False
        End If

        If password.Text = String.Empty Then
            passErrlbl.Visible = True
        Else
            passErrlbl.Visible = False
        End If

        If studentNoTbx.Text = String.Empty Or password.Text = String.Empty Then
            MsgBox("error")
        Else
            Dim res = client.Get("Users/" + studentNoTbx.Text)
            Dim resUser = res.ResultAs(Of AdminClass)
            Dim CurUser As New AdminClass With
                {
            .Username = studentNoTbx.Text,
            .Password = password.Text
                }

            If (AdminClass.IsEqual(resUser, CurUser)) Then
                loggedInUser = studentNoTbx.Text
                'MsgBox("Login successful!")
                Server.Transfer("Portal.aspx")
            Else
                AdminClass.ShowError()
            End If

        End If

    End Sub
End Class