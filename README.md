<h1>API para claves del catalgo ClaveProdServ del CFDI 3.3</h1>

Dado una clave o la descripción de una clave, regresa un arreglo con las claves que coincidan con los datos proporcionados.

También se puede consultar directamente una clave utilizando su el número que la identifica.

###Consultar directamente una clave
``http://104.236.245.141/clave/01010101``

#####Respuesta del servidor
``{"clave":"01010101","descripcion":"No existe en el catálogo"}``

###Buscar por clave y/o descripción
``http://localhost:4567/buscarclave=43231&descripcion=empresa``

#####Respuesta del servidor
``
{"claves":
	[
		{"clave":"43231500","descripcion":"Software funcional específico de la empresa"},
		{"clave":"43231600","descripcion":"Software de planificación de recursos empresariales (ERP) y contabilidad financiera"}
	]
}``
