if [[ $# -ne 1 ]]; then
    echo "Uso: $0 [nombre_de_usuario]"
    exit 1
fi

usuario=$1

# Verificar si el usuario está dado de alta en el sistema
if getent passwd "$usuario" > /dev/null; then
    echo "Usuario $usuario registrado."
else
    echo "Usuario $usuario no registrado."
    exit
fi

# Verificar si el usuario ha iniciado sesión
if who | grep -q "^$usuario "; then
    echo "Usuario $usuario ha iniciado sesión."
else
    echo "Usuario $usuario no ha iniciado sesión."
fi