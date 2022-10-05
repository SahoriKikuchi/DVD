package locacaodvds.dao;

import locacaodvds.jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * DAO genérico.
 *
 * @author Amanda e Lucas
 */
public abstract class DAO<Tipo> {

    // cada DAO terá uma conexão.
    private Connection conexao;

    public DAO() throws SQLException {
        conexao = ConnectionFactory.getConnection();

    }
    public Connection getConnection() {
        return conexao;
    }

    public void fecharConexao() throws SQLException {
        conexao.close();
    }

    public abstract void salvar( Tipo obj ) throws SQLException;

    public abstract void atualizar( Tipo obj ) throws SQLException;

    public abstract void excluir( Tipo obj ) throws SQLException;

    public abstract List<Tipo> listarTodos() throws SQLException;

    public abstract Tipo obterPorId( int id ) throws SQLException;

}