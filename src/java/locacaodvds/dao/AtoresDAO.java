package locacaodvds.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import locacaodvds.entidade.Atores;

/**
 *
 * @author Amanda e Lucas
 */
public class AtoresDAO extends DAO<Atores> {

    public AtoresDAO() throws SQLException {
    }

    @Override
    public void salvar(Atores obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO "
                + "atores( nome, sobrenome, dataDeEstreia ) "
                + "VALUES( ?, ? , ?);");

        stmt.setString(1, obj.getNome());
        stmt.setString(2, obj.getSobrenome());
        stmt.setDate(3, obj.getDataDeEstreia());

        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public void atualizar(Atores obj) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE atores "
                + "SET"
                + "    nome = ?,"
                + "    sobrenome = ?,"
                + "    dataDeEstreia = ? "
                + "WHERE"
                + "    id = ?;");

        stmt.setString(1, obj.getNome());
        stmt.setString(2, obj.getSobrenome());
        stmt.setDate(3, obj.getDataDeEstreia());
        stmt.setInt(4, obj.getId());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void excluir(Atores obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM atores "
                + "WHERE"
                + "    id = ?;");

        stmt.setInt(1, obj.getId());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public List<Atores> listarTodos() throws SQLException {
        List<Atores> lista = new ArrayList<>();

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT * FROM atores;" 
        );
        
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            Atores at = new Atores();

            at.setId(rs.getInt("id"));
            at.setNome(rs.getString("nome"));
            at.setSobrenome(rs.getString("sobrenome"));
            at.setDataDeEstreia(rs.getDate("dataDeEstreia"));

            lista.add(at);
        }

        rs.close();
        stmt.close();

        return lista;
    }

    @Override
    public Atores obterPorId(int id) throws SQLException {
        Atores atores = null;

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT * FROM atores "
                + "WHERE id = ?;");

        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {

            atores = new Atores();

            atores.setId(rs.getInt("id"));
            atores.setNome(rs.getString("nome"));
            atores.setSobrenome(rs.getString("sobrenome"));
            atores.setDataDeEstreia(rs.getDate("dataDeEstreia"));

        }

        rs.close();
        stmt.close();

        return atores;

    }
}
