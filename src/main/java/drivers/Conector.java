package drivers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class Conector {
	protected static Connection conector;

	public static void conectar() {
		try {
			String url = "jdbc:mysql://localhost/polideportivo";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conector = (Connection) DriverManager.getConnection(url, "root", "");
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Error: Al conectarse a la base de datos");
		}
	}

	public static void cerrar() {
		try {
			conector.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error: No se ha podido cerrar la conexion");
		}
	}

	public static Connection getConector() {
		return conector;
	}

	public void setConector(Connection conector) {
		Conector.conector = conector;
	}

}
