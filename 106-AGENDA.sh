#!/bin/bash
#Construye un programa denominado AGENDA que permita mediante un menú, el mantenimiento de un pequeño archivo lista.txt con el nombre, dirección y teléfono de varias personas. Debes incluir estas opciones al programa:

AGENDA_FILE=lista.txt
#Función del menu
function menu() {
cat << DESCRIPCION_MENU
***********************************************************************************
***                 ***Bienvenido al gestor de tu agenda ***                    ***
***********************************************************************************
*                                                                                 *
*              --Elige el numero de la opción que deseas ejecutar:                *
*                                                                                 *
*     1) Opición 1 o Añadir: Añadir                                               *
*        (añade un registro Nombre, Dirección, Telefono).                         *
*     2) Opición 2 o Buscar: Buscar                                               *
*        (buscar entradas por nombre, dirección o teléfono).                      *
*     3) Opición 3 o Listar: Listar (visualizar todo el archivo).                 *
*     4) Opición 4 o Ordenar: Ordenar (ordenar los registros alfabéticamente).    *
*     5) Opición 5 o Borrar: Borrar (borrar el archivo).                          *
*     6) Opición 6 o Salir: Sales del gestor.                                     *
*                                                                                 *
***********************************************************************************
DESCRIPCION_MENU
    echo ""
    elegir_menu
}
#Función Añadir
function add() {
    echo -e "Añadir un nuevo resgistro"
    read -p "Introduce el Nombre: " NOMBRE
    read -p "Introduce el Dirección: " DIRECCION
    read -p "Introduce el Telefono: " TELEFONO
    echo "$NOMBRE $DIRECCION $TELEFONO" >> $AGENDA_FILE
    sleep 2
    menu
}
#Función buscar
function search() {
    echo -e "Buscar un registro activo\n"
    read -p "Introduce el nombre o numero a buscar: " PATRON
    grep $PATRON $AGENDA_FILE
    sleep 2
    menu
}
# lista TODO
function list() {
    echo -e "Lista el resgistro actual.\n"
    cat $AGENDA_FILE | tr '#;' ' '
    sleep 2
    menu
    
}
# lista ORDENADOS por ordEn alfabetico ignorando mayusculas o minusculas
function order() {
    echo -e "Se va a ordenar el listado activo de manera alfabetica\n"
    sort -f  $AGENDA_FILE
    sleep 2
    menu
}
#Borrar resgitro.
function delete() {
    echo -e "Se va a BORRAR toda la agenda ¿estas deacuerdo?(si/no)\n"
    rm -i $AGENDA_FILE
    sleep 2
    menu
}
#Función salir
function salir() {
    echo -e "\tHasta pronto\n ****Camilo Martinez****\n"
    sleep 2
    exit 0
}


function elegir_menu(){
    
    echo -e "Elige una opción"
    read -p "" OPCION
    case "$OPCION" in
        1|Añadir) add
        ;;
        2|Buscar) search
        ;;
        3|Listar) list
        ;;
        4|Ordenar)order
        ;;
        5|Borrar|borrar) delete
        ;;
        6|Salir|salir|exit) salir
        ;;
        *)
            echo "+++ ERROR +++++++++   ERROR   +++++++ ERROR ++++"
            echo "+                                              +"
            echo "+      No se ha seleccionado ninguna opcion    +"
            echo "+                                              +"
            echo "++++++++++++   ERROR   ++++++ ERROR ++++++++++++"
            sleep 2
            echo .-e "\n"
            menu
        ;;
    esac
}

function crearSiNoExiste() {
    touch $AGENDA_FILE
    if [ "$?" != "0" ]; then
        echo -e "Se va a crear la agenda\n" \
        "Error de entrada/salida en" \
        "el fichero $AGENDA_FILE"
    fi
}
clear
crearSiNoExiste
menu "$@"
