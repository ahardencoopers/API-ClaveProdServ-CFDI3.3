<h1>API para claves del catálogo ClaveProdServ del CFDI 3.3</h1>

Dado una clave o la descripción de una clave, regresa un arreglo con las claves que coincidan con los datos proporcionados.

También se puede consultar directamente una clave utilizando su el número que la identifica.

<h3>Consultar directamente una clave</h3>
<code>http://104.236.245.141/clave/01010101</code>

<h4>Respuesta del servidor</h4>
<code>{"clave":"01010101","descripcion":"No existe en el catálogo"}</code>

<h4>Buscar por clave y/o descripción</h4>
<code>http://localhost:4567/buscarclave=43231&descripcion=empresa</code>

<h4>Respuesta del servidor</h4>
<code>
{"claves":
	[
		{"clave":"43231500","descripcion":"Software funcional específico de la empresa"},
		{"clave":"43231600","descripcion":"Software de planificación de recursos empresariales (ERP) y contabilidad financiera"}
	]
}
</code>
