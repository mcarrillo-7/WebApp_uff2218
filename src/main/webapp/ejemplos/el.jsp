<%@page import="java.util.ArrayList"%>
<%@include file="../includes/header.jsp"%>

<%@include file="../includes/navbar.jsp"%>
<h1>Expression Language</h1>
<section>
	<div class="no-overflow" id="yui_3_17_2_1_1563432197744_20">
		<p></p>
		<p></p>
		<p>
			El lenguaje de expresiones comenz� como una parte de la&nbsp;<a
				href="http://es.wikipedia.org/wiki/JavaServer_Pages_Standard_Tag_Library"
				title="JavaServer Pages Standard Tag Library">JavaServer Pages
				Standard Tag Library (JSTL)</a>&nbsp;y fue llamado originalmente SPEL
			(Simplest Possible Expression Language), y despu�s simplemente&nbsp;<b>Expression
				Language</b>&nbsp;(EL). Era un lenguaje de script que permit�a el acceso
			a los componentes de&nbsp;<a
				href="http://es.wikipedia.org/wiki/Plataforma_Java"
				title="Plataforma Java">Java</a>&nbsp;(<a
				href="http://es.wikipedia.org/wiki/JavaBean" title="JavaBean">JavaBeans</a>)
			a trav�s de&nbsp;<a
				href="http://es.wikipedia.org/wiki/JavaServer_Pages"
				title="JavaServer Pages">JSP</a>. Desde&nbsp;<a
				href="http://es.wikipedia.org/wiki/JavaServer_Pages"
				title="JavaServer Pages">JSP 2.0</a>, se ha utilizado dentro de las
			etiquetas&nbsp;<a
				href="http://es.wikipedia.org/wiki/JavaServer_Pages"
				title="JavaServer Pages">JSP</a>&nbsp;para separar el c�digo Java de
			JSP, y para permitir un acceso m�s f�cil a los componentes de Java
			(que en c�digo Java).
		</p>
		<p>
			Con los a�os, el lenguaje de expresiones ha evolucionado para incluir
			una funcionalidad m�s avanzada y fue incluido en la especificaci�n
			JSP 2.0. El scripting se hizo m�s f�cil para los dise�adores de
			contenido web que tienen poco o pr�cticamente ning�n conocimiento del
			n�cleo del lenguaje Java. Este lenguaje de script convirti�
			verdaderamente a JSP en un lenguaje de script. Antes de EL, JSP
			consist�a en algunas etiquetas especiales como&nbsp;<a
				href="http://es.wikipedia.org/w/index.php?title=Scriptlet&amp;action=edit&amp;redlink=1"
				title="Scriptlet (a�n no redactado)">scriptlets</a>, expresiones,
			etc. dentro de las cuales el c�digo Java era escrito de forma
			expl�cita. Con EL el dise�ador de contenido web s�lo necesita saber
			c�mo hacer las llamadas apropiadas a los m�todos b�sicos de Java.
		</p>
		<p>
			EL era, tanto sint�ctica como sem�nticamente, similar a las
			expresiones de&nbsp;<a href="http://es.wikipedia.org/wiki/JavaScript"
				title="JavaScript">JavaScript</a>:
		</p>
		<ul>
			<li>no hay conversi�n de tipos expl�cita</li>
			<li>las conversiones de tipos se hacen generalmente de forma
				impl�cita</li>
			<li>las comillas dobles y simples son equivalentes</li>
			<li><code>objeto.propiedad</code>&nbsp;tiene el mismo
				significado que&nbsp;<code>objeto.getProperty()</code></li>
		</ul>
		<p>
			EL tambi�n liber� al programador de tener que conocer las
			particularidades de c�mo se accede en realidad a los valores:&nbsp;
			<code>objeto.propiedad</code>
			puede significar (dependiendo de qu�&nbsp;
			<code>objeto</code>
			&nbsp;se trata) o bien&nbsp;
			<code>object.get("propiedad")</code>
			&nbsp;o&nbsp;
			<code>object.getProperty("propiedad")</code>
			&nbsp;o&nbsp;
			<code>object.getPropiedad()</code>
			, etc.
		</p>
		<p>
			Durante el desarrollo de JSP 2.0, la tecnolog�a&nbsp;<a
				href="http://es.wikipedia.org/wiki/JavaServer_Faces"
				title="JavaServer Faces">JavaServer Faces</a>&nbsp;fue publicada, la
			cual tambi�n necesitaba un lenguaje de expresiones, pero el lenguaje
			de expresiones definido en la especificaci�n JSP 2.0 no satisfac�a
			todas las necesidades para el desarrollo con la tecnolog�a JSF. La
			limitaci�n m�s obvia es que sus expresiones son evaluadas de
			inmediato. Y tambi�n, los componentes de JSF necesitan una manera de
			invocar m�todos de objetos del lado del servidor. Un lenguaje m�s
			poderoso fue creado con las siguientes nuevas caracter�sticas:
		</p>
		<ul>
			<li>Expresiones diferidas, que no se eval�an de inmediato</li>
			<li>Expresiones que pueden establecer (set), as� como recuperar
				datos (get)</li>
			<li>Expresiones de m�todos, que pueden invocar m�todos</li>
		</ul>
		<p>El nuevo lenguaje de expresiones funcion� bien para los fines
			de JSF. Pero los desarrolladores ten�an problemas en la integraci�n
			de JSP EL con JSF EL debido a conflictos. Debido a estas
			incompatibilidades, la iniciativa "lenguaje de expresi�n unificado"
			comenz� para unificar estos lenguajes de expresiones. A partir de JSP
			2.1, los lenguajes de expresi�n de JSP 2.0 y JSF 1.1 se han fusionado
			en un solo lenguaje de expresiones unificado (EL 2.1).</p>
		<p>
			<br>
		</p>
		<h2>
			<span id="Caracter.C3.ADsticas">Caracter�sticas</span>
		</h2>
		<p>El nuevo EL unificado es una uni�n de los lenguajes de
			expresiones de JSP y JSF. Adem�s de las caracter�sticas ya
			disponibles en el EL de JSP, el EL unificado tiene las siguientes
			caracter�sticas:</p>
		<ul>
			<li>Evaluaci�n diferida</li>
			<li>Soporte para expresiones que pueden establecer valores y
				expresiones que pueden invocar m�todos</li>
			<li>Una API usable para resolver expresiones</li>
		</ul>
		<h2>Ejemplos</h2>
		<p>Esto muestra un ejemplo sencillo de Unified EL siendo utilizado
			dentro de una etiqueta JSTL "c:out":</p>
		<pre id="yui_3_17_2_1_1563432197744_19">&lt;c:out value="${myBean.myField}" /&gt;</pre>
		<p>Una expresi�n que llama a un m�todo con un par�metro:</p>
		<pre>${myBean.addNewOrder('orderName')}</pre>
		<h2>
			Operadores<br>
		</h2>
		<p>JSP Expression Language (EL) soporta operadores logicos y
			aritmeticos de Java. Listado de los operadores mas comunes:</p>
		<table>
			<tbody>
				<tr>
					<th>Operator</th>
					<th>Description</th>
				</tr>
				<tr>
					<td>.</td>
					<td>Access a bean property or Map entry</td>
				</tr>
				<tr>
					<td>[]</td>
					<td>Access an array or List element</td>
				</tr>
				<tr>
					<td>()</td>
					<td>Group a subexpression to change the evaluation order</td>
				</tr>
				<tr>
					<td>+</td>
					<td>Addition</td>
				</tr>
				<tr>
					<td>-</td>
					<td>Subtraction or negation of a value</td>
				</tr>
				<tr>
					<td>*</td>
					<td>Multiplication</td>
				</tr>
				<tr>
					<td>/ or div</td>
					<td>Division</td>
				</tr>
				<tr>
					<td>% or mod</td>
					<td>Modulo (remainder)</td>
				</tr>
				<tr>
					<td>== or eq</td>
					<td>Test for equality</td>
				</tr>
				<tr>
					<td>!= or ne</td>
					<td>Test for inequality</td>
				</tr>
				<tr>
					<td>&lt; or lt</td>
					<td>Test for less than</td>
				</tr>
				<tr>
					<td>&gt; or gt</td>
					<td>Test for greater than</td>
				</tr>
				<tr>
					<td>&lt;= or le</td>
					<td>Test for less than or equal</td>
				</tr>
				<tr>
					<td>&gt;= or gt</td>
					<td>Test for greater than or equal</td>
				</tr>
				<tr>
					<td>&amp;&amp; or and</td>
					<td>Test for logical AND</td>
				</tr>
				<tr>
					<td>|| or or</td>
					<td>Test for logical OR</td>
				</tr>
				<tr>
					<td>! or not</td>
					<td>Unary Boolean complement</td>
				</tr>
				<tr>
					<td>empty</td>
					<td>Test for empty variable values</td>
				</tr>
			</tbody>
		</table>
		<pre></pre>
		<h2>Objetos Implicitos:</h2>
		<p>
			<br>
		</p>
		<p></p>
		<table>
			<tbody>
				<tr>
					<th>Implicit object</th>
					<th>Description</th>
				</tr>
				<tr>
					<td>pageScope</td>
					<td>Scoped variables from page scope</td>
				</tr>
				<tr>
					<td>requestScope</td>
					<td>Scoped variables from request scope</td>
				</tr>
				<tr>
					<td>sessionScope</td>
					<td>Scoped variables from session scope</td>
				</tr>
				<tr>
					<td>applicationScope</td>
					<td>Scoped variables from application scope</td>
				</tr>
				<tr>
					<td>param</td>
					<td>Request parameters as strings</td>
				</tr>
				<tr>
					<td>paramValues</td>
					<td>Request parameters as collections of strings</td>
				</tr>
				<tr>
					<td>header</td>
					<td>HTTP request headers as strings</td>
				</tr>
				<tr>
					<td>headerValues</td>
					<td>HTTP request headers as collections of strings</td>
				</tr>
				<tr>
					<td>initParam</td>
					<td>Context-initialization parameters</td>
				</tr>
				<tr>
					<td><a class="autolink" title="Cookie"
						href="http://www.campus.formacion.ipartek.com/moodle/mod/url/view.php?id=722">cookie</a></td>
					<td><a class="autolink" title="Cookie"
						href="http://www.campus.formacion.ipartek.com/moodle/mod/url/view.php?id=722">Cookie</a>
						values</td>
				</tr>
				<tr>
					<td>pageContext</td>
					<td>The JSP PageContext object for the current page</td>
				</tr>
			</tbody>
		</table>
		<h2>
			<br>
		</h2>
		<h2>Palabras Reservadas</h2>
		<p>
			<a name="indexterm-212"></a>
		</p>
		<table cellspacing="0" cellpadding="10" border="1" width="100%"
			id="yui_3_17_2_1_1563432197744_29">
			<tbody id="yui_3_17_2_1_1563432197744_28">
				<tr>
					<td align="left" valign="top"><p>
							<tt>and</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>or</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>not</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>eq</tt>
						</p></td>
				</tr>
				<tr>
					<td align="left" valign="top"><p>
							<tt>ne</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>lt</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>gt</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>le</tt>
						</p></td>
				</tr>
				<tr id="yui_3_17_2_1_1563432197744_33">
					<td align="left" valign="top"><p>
							<tt>ge</tt>
						</p></td>
					<td align="left" valign="top" id="yui_3_17_2_1_1563432197744_35"><p
							id="yui_3_17_2_1_1563432197744_34">
							<tt>true</tt>
						</p></td>
					<td align="left" valign="top" id="yui_3_17_2_1_1563432197744_36"><p>
							<tt>false</tt>
						</p></td>
					<td align="left" valign="top" id="yui_3_17_2_1_1563432197744_32"><p
							id="yui_3_17_2_1_1563432197744_31">
							<tt id="yui_3_17_2_1_1563432197744_30">null</tt>
						</p></td>
				</tr>
				<tr id="yui_3_17_2_1_1563432197744_27">
					<td align="left" valign="top"><p>
							<tt>instanceof</tt>
						</p></td>
					<td align="left" valign="top" id="yui_3_17_2_1_1563432197744_26"><p
							id="yui_3_17_2_1_1563432197744_25">
							<tt id="yui_3_17_2_1_1563432197744_24">empty</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>div</tt>
						</p></td>
					<td align="left" valign="top"><p>
							<tt>mod</tt>
						</p></td>
				</tr>
			</tbody>
		</table>
		<p>
			<br>
		</p>
		<p>
			<br>
		</p>
		<p>
			<br>
		</p>
	</div>
	<h2>Ejemplos</h2>
	<p>
		<code>&dollar;{2+2} = ${2 + 2}</code>
	</p>
	<p>
		<code>&dollar;{2>2} = ${2 > 2}</code>
	</p>



	<%
		ArrayList<String> colores = null;
	%>
		<p><code>ArrayList<String> colores es null ? ${colores==null }</code></p>
		<p>Array colores es null ? ${colores==null }</p>
		
			<%
		colores = new ArrayList<String>();
			colores.add("verde");
			colores.add("azul");
			colores.add("amarillo");
			colores.add("rojo");
	%>
		<p><code>colores = new ArrayList<String>();</code></p>
		<p><code>colores.add("verde");</code></p>
		<p><code>colores.add("azul");</code></p>
		<p><code>colores.add("amarillo");</code></p>
		<p><code>colores.add("rojo");</code></p>
		<p><code>ArrayList<String> colores es null ? ${colores==null }</code></p>
		
</section>


<%@include file="../includes/footer.jsp"%>