package drivers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDriver {

	public static ArrayList<User> cargarUsuarios(String specifiedID) {
		ArrayList<User> users = new ArrayList<User>();

		Conector.conectar();

		try {
			Statement st = Conector.conector.createStatement();
			ResultSet r = st.executeQuery("select * from usuarios " + specifiedID);
			while (r.next()) {
				User u = new User(r.getString(1), r.getString(2));
				users.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		Conector.cerrar();

		return users;
	}

	public static void insertarUsuario(User usr) {

		Conector.conectar();

		try {
			PreparedStatement st = Conector.conector
					.prepareStatement("insert into usuarios (nombre_apellido) VALUES (?)");
			st.setString(1, usr.getName());
			st.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		Conector.cerrar();

	}

	public static void modificarUser(User usr) {
		Conector.conectar();

		try {
			PreparedStatement st = Conector.conector
					.prepareStatement("update usuarios set nombre_apellido=? where id=?");
			st.setString(1, usr.getName());
			st.setString(2, usr.getId());
			st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		Conector.cerrar();
	}

	public static void eliminarUser(String usr) {
		Conector.conectar();

		try {
			PreparedStatement st = Conector.conector.prepareStatement("delete from usuarios where id = ?");
			st.setString(1, usr);
			st.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		Conector.cerrar();
	}

	public static User cargarUsuario(String id) {
		User user = new User();

		Conector.conectar();

		try {
			PreparedStatement st = Conector.conector.prepareStatement("select * from usuarios where id=?");
			st.setString(1, id);
			ResultSet r = st.executeQuery();
			while (r.next()) {
				user.setId(r.getString(1));
				user.setName(r.getString(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		Conector.cerrar();

		return user;
	}

}
