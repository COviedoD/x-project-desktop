Public Interface loginInterface
    'Function ValidarUsuario(correo As String) As Integer
    Function InsertarUsuario(ByVal nombre As String, ByVal correo As String, ByVal pass As String, ByVal rol As String) As Integer
    'Function EncriptarPass(pass As String) As Integer

    'Function DesencriptarPass(pass As String) As Integer
End Interface
