El proyecto en este repositorio consiste en el desarrollo de un servicio web usando Java y Spring Boot y una base de datos en mysql, y su consumo a través de una aplicación hecha con JavaScript.

El requerimiento bajo el cual se desarrolló este proyecto es el siguiente: Descripción:

Se desea consultar el registro de los inmuebles que han sido habitados por varias personas. Para esto se debe almacenar el nombre, apellido y correo de cada persona. Cada persona puede estar relacionada con una o más direcciones y la fecha en que estuvo en esta dirección.

El objetivo es modelar la base de datos para esta pequeña estructura. Crear el servicio web en Java para realizar la consulta y entregar la respuesta de dicha consulta al cliente. Debe haber una pantalla de búsqueda sencilla, que tenga un campo de texto y un botón de buscar. Al presionar buscar, se consumirá el servicio web creado anteriormente el cual buscará el texto ingresado en los nombres, apellidos o email, y retornará cada persona que contenga el texto en cualquiera de estos campos.

Cada registro retornado por el servicio debe contener la información de la persona, la dirección y la fecha en qué estuvo en esta dirección. (Si la persona tiene más de una dirección asociada, devolver una fila por dirección). Los registros devueltos por el servicio se deben mostrar en una tabla debajo de los componentes de búsqueda.

Nota: La respuesta del servicio debe ser en JSON y la base de datos MySQL.

Recomendación: Se pueden usar librerías como YUI o jQuery. Para el manejo del JSON en Java se puede usar Gson, json-simple. (Aunque ninguna es obligatoria)

