Public Class ShamsiDate

    Enum ShowType
        LongDate = 1
        ShortDate = 2
    End Enum

    Public Shared Function Miladi2Shamsi(ByVal d As DateTime, ByVal Show As ShowType) As String

        Dim FDate As New System.Globalization.PersianCalendar
        Dim Result As String = ""

        If Show = ShowType.ShortDate Then
            Result += FDate.GetYear(d).ToString + "/"
            Result += FDate.GetMonth(d).ToString("00") + "/"
            Result += FDate.GetDayOfMonth(d).ToString("00")
            Return Result
        Else
            Result += ShamsiDayName(FDate.GetDayOfWeek(d)) + "  "
            Result += FDate.GetDayOfMonth(d).ToString + "  "
            Result += ShamsiMonthName(FDate.GetMonth(d)) + "  "
            Result += FDate.GetYear(d).ToString
            Return Result
        End If

    End Function

    Public Shared Function ShamsiMonthName(ByVal MonthID As Byte) As String
        Dim Result As String = ""
        Select Case MonthID
            Case 1
                Result = "فروردین"
            Case 2
                Result = "اردیبهشت"
            Case 3
                Result = "خرداد"
            Case 4
                Result = "تیر"
            Case 5
                Result = "مرداد"
            Case 6
                Result = "شهریور"
            Case 7
                Result = "مهر"
            Case 8
                Result = "ابان"
            Case 9
                Result = "آذر"
            Case 10
                Result = "دی"
            Case 11
                Result = "بهمن"
            Case 12
                Result = "اسفند"
        End Select
        Return Result
    End Function

    Public Shared Function ShamsiDayName(ByVal DayID As Byte) As String
        Dim Result As String = ""
        Select Case DayID
            Case 0
                Result = "یک شنبه"
            Case 1
                Result = "دوشنبه"
            Case 2
                Result = "سه شنبه"
            Case 3
                Result = "چهارشنبه"
            Case 4
                Result = "پنج شنبه"
            Case 5
                Result = "جمعه"
            Case 6
                Result = "شنبه"
        End Select
        Return Result
    End Function

    ''' <summary>
    ''' فرمت تاریخ شمسی باید بصورت 0000/00/00 باشد
    ''' و فرمت ساعت بصورت 00:00:00 باشد
    ''' </summary>
    ''' <param name="date"></param>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Shared Function Shamsi2Miladi(ByVal [date] As String, ByVal [time] As String) As DateTime

        Dim year As Integer = Integer.Parse([date].Substring(0, 4))
        Dim month As Integer = Integer.Parse([date].Substring(5, 2))
        Dim day As Integer = Integer.Parse([date].Substring(8, 2))
        Dim p As New System.Globalization.PersianCalendar()
        Dim dt As DateTime = p.ToDateTime(year, month, day, 0, 0, 0, 0)
        Dim xyear As String = dt.Year.ToString()
        Dim xmonth As String = dt.Month.ToString()
        If xmonth.ToString().Length = 1 Then
            xmonth = "0" & xmonth
        End If
        Dim xday As String = dt.Day.ToString()
        If xday.ToString().Length = 1 Then
            xday = "0" & xday
        End If

        Return Convert.ToDateTime(xyear & "/" & xmonth & "/" & xday & "  " & time)

    End Function

End Class