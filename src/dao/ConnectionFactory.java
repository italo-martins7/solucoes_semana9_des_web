package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final ThreadLocal<Connection> conn = new ThreadLocal<>();
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("erro na conexão: ", e);
		}
	}

	public static Connection obtemConexao() throws SQLException {

		if (conn.get() == null) {

			String servidor = "localhost";
			String porta = "3306";
			String database = "ex_pais";
			conn.set(DriverManager.getConnection(
					"jdbc:mysql://" + servidor + ":" + porta + "/" + database + "?useTimezone=true&serverTimezone=UTC",
					"root", "alunos"));
		}
		return conn.get();
	}

	public static void fechaConexao() throws SQLException {
		if (conn.get() != null) {
			conn.get().close();
			conn.set(null);

		}
	}
}