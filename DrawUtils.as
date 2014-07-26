/**
 * <p>Clase de métodos estáticos con utilidades para dibujar.</p>
 *  
 * @author dmvalverde
 */
class com.davidvalverde.utils.DrawUtils {
	
	/**
	 * drawLine(mc,x1,y1,x2,y2,thickness,color)<br>
	 * <p>Dibuja una línea.</p>
	 * 
	 * @param mc MovieClip donde se dibujará la línea.
	 * @param x1 Coordenada X del punto de inicio de la línea.
	 * @param y1 Coordenada Y del punto de inicio de la línea.
	 * @param x2 Coordenada X del punto de fin de la línea.
	 * @param y2 Coordenada Y del punto de fin de la línea.
	 * @param thickness Grosor de la línea.
	 * @param color Color de la línea.
	 */
	public static function drawLine(mc: MovieClip, x1: Number, y1: Number, x2: Number, y2: Number, thickness: Number, color: Number): Void {
		
		mc.lineStyle(thickness, color);
		mc.moveTo(x1, y1);
		mc.lineTo(x2, y2);
					
	}
	
	/**
	 * drawRect(mc,x1,y1,x2,y2,thickness,color)<br>
	 * <p>Dibuja un rectángulo.</p>
	 * 
	 * @param mc MovieClip donde se dibujará el rectángulo.
	 * @param x1 Coordenada X de un vértice del rectángulo.
	 * @param y1 Coordenada Y de un vértice del rectángulo.
	 * @param x2 Coordenada X del vértice opuesto del rectángulo.
	 * @param y2 Coordenada Y del vértice opuesto del rectángulo.
	 * @param thickness Grosor del borde.
	 * @param color Color del borde.
	 */
	public static function drawRect(mc: MovieClip, x1: Number, y1: Number, x2: Number, y2: Number, thickness: Number, color: Number): Void {
		
		mc.lineStyle(thickness, color);
		mc.moveTo(x1, y1);
		mc.lineTo(x2, y1);
		mc.lineTo(x2, y2);
		mc.lineTo(x1, y2);
		mc.lineTo(x1, y1);
					
	}
	
	/**
	 * drawRectRoundCorner(mc,x1,y1,x2,y2,radius,thickness,color)<br>
	 * <p>Dibuja un rectángulo.</p>
	 * 
	 * @param mc MovieClip donde se dibujará el rectángulo.
	 * @param x1 Coordenada X de un vértice del rectángulo.
	 * @param y1 Coordenada Y de un vértice del rectángulo.
	 * @param x2 Coordenada X del vértice opuesto del rectángulo.
	 * @param y2 Coordenada Y del vértice opuesto del rectángulo.
	 * @param radius Radio de las esquinas del rectángulo.
	 * @param thickness Grosor del borde.
	 * @param color Color del borde.
	 */
	public static function drawRectRoundCorner(mc: MovieClip, x1: Number, y1: Number, x2: Number, y2: Number, radius: Number, thickness: Number, color: Number): Void {
		
		mc.lineStyle(thickness, color);
		mc.moveTo(x1+radius, y1);
		mc.lineTo(x2-radius, y1);
		mc.curveTo(x2, y1, x2, y1+radius);
		mc.lineTo(x2, y2-radius);
		mc.curveTo(x2, y2, x2-radius, y2);
		mc.lineTo(x1+radius, y2);
		mc.curveTo(x1, y2, x1, y2-radius);
		mc.lineTo(x1, y1+radius);
		mc.curveTo(x1, y1, x1+radius, y1);
					
	}
	
	/**
	 * drawEllipse(mc,x1,y1,x2,y2,thickness,color)<br>
	 * <p>Dibuja una elipse.</p>
	 * 
	 * @param mc MovieClip donde se dibujará la línea.
	 * @param x1 Coordenada X del primer radio de la elipse.
	 * @param y1 Coordenada Y del primer radio de la elipse.
	 * @param x2 Coordenada X del segundo radio de la elipse.
	 * @param y2 Coordenada Y del segundo radio de la elipse.
	 * @param thickness Grosor del borde.
	 * @param color Color del borde.
	 */
	public static function drawEllipse(mc: MovieClip, x1: Number, y1: Number, x2: Number, y2: Number, thickness: Number, color: Number): Void {
	
		var x: Number = 0;
		var y: Number = 0;
		var radiox: Number = (x1 - x2) * (-1);
		var radioy: Number = (y1 - y2) * (-1);
		var i: Number = 0;
		
		mc.lineStyle(thickness, color);	
		for (i=0; i<=360; i++) {
			x = radiox * Math.cos(Math.PI/180*i);
			y = radioy * Math.sin(Math.PI/180*i);
			if (i == 0) {
				mc.moveTo(x1+x, y1+y);
			}
			mc.curveTo(x1+x, y1+y, x1+x, y1+y);
		}
		
	}
	
}