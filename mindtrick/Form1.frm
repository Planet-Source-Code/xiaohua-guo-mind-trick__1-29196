VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Your mind is playing tricks on YOU!"
   ClientHeight    =   4575
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   4665
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   305
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   311
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   5000
      Left            =   4200
      Top             =   2280
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   2520
      Top             =   2160
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   1500
      Index           =   2
      Left            =   3000
      Top             =   3000
      Width           =   1500
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   1500
      Index           =   1
      Left            =   3000
      Top             =   0
      Width           =   1500
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      BorderStyle     =   0  'Transparent
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   1500
      Index           =   0
      Left            =   0
      Top             =   0
      Width           =   1500
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   1500
      Index           =   3
      Left            =   0
      Top             =   3000
      Width           =   1500
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      FillStyle       =   0  'Solid
      Height          =   1500
      Index           =   3
      Left            =   3120
      Top             =   1500
      Width           =   255
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   1500
      Top             =   3000
      Width           =   1500
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      FillStyle       =   0  'Solid
      Height          =   1500
      Index           =   1
      Left            =   0
      Top             =   1500
      Width           =   255
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   1500
      Top             =   0
      Width           =   1500
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim direction As Integer

Private Sub Form_Load()
Shape2(0).FillColor = vbWhite
Shape2(1).FillColor = vbWhite
Shape2(2).FillColor = vbWhite
Shape2(3).FillColor = vbWhite

End Sub

Private Sub Timer1_Timer()
If Shape1(1).Left = 0 Then
    direction = 0
End If
If Shape1(1).Left = 80 Then
    direction = 1
End If
If direction = 0 Then
    Shape1(0).Top = Shape1(0).Top + 1
    Shape1(2).Top = Shape1(2).Top + 1
    Shape1(1).Left = Shape1(1).Left + 1
    Shape1(3).Left = Shape1(3).Left + 1
Else
    Shape1(0).Top = Shape1(0).Top - 1
    Shape1(2).Top = Shape1(2).Top - 1
    Shape1(1).Left = Shape1(1).Left - 1
    Shape1(3).Left = Shape1(3).Left - 1
End If

DoEvents
End Sub

Private Sub Timer2_Timer()
If Shape2(1).FillColor = vbWhite Then
Shape2(0).FillColor = vbBlue
Shape2(1).FillColor = vbBlue
Shape2(2).FillColor = vbBlue
Shape2(3).FillColor = vbBlue
Exit Sub
ElseIf Shape2(1).FillColor = vbBlue Then
Shape2(0).FillColor = vbWhite
Shape2(1).FillColor = vbWhite
Shape2(2).FillColor = vbWhite
Shape2(3).FillColor = vbWhite
End If
End Sub
