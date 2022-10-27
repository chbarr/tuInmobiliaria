function showData() {
    var formValue = document.getElementById("data").value;
    var data = new FormData(); //Data será la variable que permita enviar el nombre de la persona como parámetro
    var tableContainer = document.getElementById("tableContainer");
    tableContainer.innerHTML = "";
    data.append('data', formValue);
    fetch("http://localhost:8082/", {
        method: 'POST',
        body: data
    }).then(function (response) { //El parámetro response es la respuesta del servicio
        return response.text();//Convierte la respuesta en texto plano para poder leerla
    }).then(function (datos) {
        console.log(datos) //JSON recibido del controlador
        let objData = JSON.parse(datos)
        if (formValue.length == 0) {
            alert("Debe diligenciar el campo");
        } else {
            if (objData.length > 0) {
                var table = `<table border = "1">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Direccion</th>
                <th>Fecha de arrendamiento</th>
            </tr>
        </thead>
        <tbody>`;
                for (person of objData) {
                    table += "<tr>";
                    table += '<td rowspan="' + person.rents.length + '">' + person.name + '</td>';
                    table += '<td rowspan="' + person.rents.length + '">' + person.lastname + '</td>';
                    table += '<td rowspan="' + person.rents.length + '">' + person.email + '</td>';

                    for (var index = 0; index < person.rents.length; index++) {
                        if (index == 0) {
                            table += '<td >' + person.rents[index].address + '</td>';
                            table += '<td >' + person.rents[index].date + '</td>';
                        } else {
                            table += "<tr>";
                            table += '<td >' + person.rents[index].address + '</td>';
                            table += '<td >' + person.rents[index].date + '</td>';
                            table += "</tr>";
                        }
                    }
                    table += "</tr>";
                }
                table += "</tbody> </table>";
                tableContainer.innerHTML = table;
            } else {
                alert("No se encontraron resultados");
            }
        }
    })
}