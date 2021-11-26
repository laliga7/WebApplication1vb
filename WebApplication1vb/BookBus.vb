Public Class BookBus
    Public Property Deatination() As String
    Public Property TravelTime() As String
    Public Property StudentNumber() As String
    Public Property BookingTime() As String

    Private Shared TheError As String = "Username not found"

    Public Shared Sub ShowError()
        MsgBox(TheError)
    End Sub

    Public Shared Function IsEqual(user1 As BookBus, user2 As BookBus)

        If (user1.StudentNumber.Equals(user2.StudentNumber) And user1.TravelTime.Equals(user2.TravelTime)) Then
            TheError = "You cannot book multiple seats with the same time"
            Return False
        End If

        Return True
    End Function
End Class
