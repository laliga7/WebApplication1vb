Imports FireSharp.Config
Imports FireSharp.Response
Imports FireSharp.Interfaces
Imports Newtonsoft.Json
Imports System.Web.Script.Serialization
Imports System.ComponentModel
Imports System.IO

Public Class Portal
    Inherits System.Web.UI.Page

    Private fcon As New FirebaseConfig() With
        {
    .AuthSecret = "s0ZY64v97y4wyMJLDvKJfI5eBbmJAW8HVOpUFqzk",
    .BasePath = "https://bus-book-b2b05-default-rtdb.firebaseio.com/"
        }
    Private client As IFirebaseClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        currentUserlbl.Text = loggedInUser

        successlbl.Visible = False

        Try
            client = New FireSharp.FirebaseClient(fcon)
        Catch
            MsgBox("there was a problem in internet connection")
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim checkError As Integer = 0
        Dim totalCount As Integer = 0
        Dim dow As Integer = 0
        Dim timeRepeat As Boolean = False

        Dim todayDate As Date = Date.Now()
        Dim strDate As String = todayDate.ToString("yyyy-MM-dd")

#Region "Required fields haldling"
        If DropDownList1.SelectedValue.Equals("") = True Then
            checkError = 1
            destErrLbl.Visible = True
        Else
            destErrLbl.Visible = False
        End If

        If DropDownList2.SelectedValue.Equals("") Then
            checkError = 1
            timeErrLbl.Visible = True
        Else
            timeErrLbl.Visible = False
        End If

        If studentNoTxtbox.Text = String.Empty Then
            checkError = 1
            studNoErrlbl.Visible = True
        Else
            studNoErrlbl.Visible = False
        End If

        If CheckBox1.Checked = False Then
            checkError = 1
            iAckErrLbl.Visible = True
        Else
            iAckErrLbl.Visible = False
        End If
#End Region

        Dim res2 As FirebaseResponse = client.Get("BusRecords")
        Dim data As Dictionary(Of String, BookBus) = JsonConvert.DeserializeObject(Of Dictionary(Of String, BookBus))(res2.Body.ToString)

        For Each item In data
            If item.Value.StudentNumber.Equals(studentNoTxtbox.Text) And item.Value.TravelTime.Equals(DropDownList2.SelectedValue) Then
                timeRepeat = True
            End If

            totalCount = totalCount + 1
        Next


        If timeRepeat = True Then
            MsgBox("You cannot book multiple seats with the same time")
        Else


            If checkError > 0 Then

            Else
                destErrLbl.Visible = False
                timeErrLbl.Visible = False
                studNoErrlbl.Visible = False
                iAckErrLbl.Visible = False

                successlbl.Visible = True

                Dim std As New BookBus() With
                    {
            .Deatination = DropDownList1.SelectedValue,
            .TravelTime = DropDownList2.SelectedValue.ToString,
            .StudentNumber = studentNoTxtbox.Text,
            .BookingTime = Date.Now().ToString
                    }
                Dim setter = client.Set("BusRecords/Seat" + (totalCount + 1).ToString, std)

                successlbl.Text = "Seat " + (totalCount + 1).ToString + " booked!!     " + Date.Now().ToString("yyyy-MM-dd") + "  " + studentNoTxtbox.Text

                DropDownList1.SelectedValue = ""
                DropDownList2.SelectedValue = ""
                studentNoTxtbox.Text = ""
                CheckBox1.Checked = False


            End If
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim random As New Random()
        Dim town As Integer = 3
        Dim pta As Integer = 2
        Dim garak As Integer = 2
        Dim numPass As Integer = 0
        Dim avSeat As Integer = 0
        Dim numSeat As Integer = 0

        If DropDownList3.SelectedValue.Equals("") Or DropDownList4.SelectedValue.Equals("") Then
            buserrlbl.Visible = True
        Else
            buserrlbl.Visible = False

            If DropDownList3.SelectedIndex.Equals(1) Then
                numBuslbl.Text = (town).ToString()
            Else
                If DropDownList3.SelectedIndex.Equals(2) Then
                    numBuslbl.Text = (pta).ToString()
                Else
                    If DropDownList3.SelectedIndex.Equals(3) Then
                        numBuslbl.Text = (garak).ToString()
                    End If
                End If
            End If

            Dim res2 As FirebaseResponse = client.Get("BusRecords")
            Dim data As Dictionary(Of String, BookBus) = JsonConvert.DeserializeObject(Of Dictionary(Of String, BookBus))(res2.Body.ToString)

            For Each item In data
                If item.Value.Deatination.Equals(DropDownList3.SelectedValue) And item.Value.TravelTime.Equals(DropDownList4.SelectedValue) Then
                    numPass = numPass + 1
                End If

            Next

            numPasslbl.Text = numPass.ToString()

            If DropDownList3.SelectedIndex.Equals(1) Then
                numSeat = (town * 55)
            Else
                If DropDownList3.SelectedIndex.Equals(2) Then
                    numSeat = (pta * 55)
                Else
                    If DropDownList3.SelectedIndex.Equals(3) Then
                        numSeat = (garak * 55)
                    End If
                End If
            End If

            numSeatlbl.Text = numSeat.ToString
            avSeatlbl.Text = (numSeat - numPass).ToString

        End If

    End Sub
End Class