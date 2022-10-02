package locacaodvds.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Year;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import locacaodvds.entidade.Atores;
import locacaodvds.entidade.Classificacao;
import locacaodvds.entidade.Dvd;
import locacaodvds.entidade.Genero;

/**
 *
 * @author Amanda e Lucas
 */
public class DvdDAO extends DAO<Dvd> {

    public DvdDAO() throws SQLException {
    }

    @Override
    public void salvar(Dvd obj) throws SQLException {

        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO "
                + "dvd("
                + "    titulo, "
                + "    anoDeLancamento, "
                + "    atorPrincipal_id, "
                + "    atorCoadjuvante_id, "
                + "    genero_id, "
                + "    classificacao_id, "
                + "    dataDeLancamento, "
                + "    duracao )"
                + "VALUES( ?, ?, ?, ?, ?, ?, ?, ? );");

        stmt.setString(1, obj.getTitulo());
        stmt.setInt(2, (obj.getAnoDeLancamento().getValue()));
        stmt.setInt(3, obj.getAtorPrincipal());
        stmt.setInt(4, obj.getAtorCoadjuvante());
        stmt.setInt(5, obj.getGenero().getId());
        stmt.setInt(6, obj.getClassificacao().getId());
        stmt.setDate(7, obj.getDataDeLancamento());
        stmt.setInt(8, obj.getDuracao());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void atualizar(Dvd obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE dvd "
                + "SET"
                + "    titulo = ?, "
                + "    anoDeLancamento = ?, "
                + "    atorPrincipal_id = ?, "
                + "    atorCoadjuvante_id = ?, "
                + "    genero_id = ?, "
                + "    classificacao_id = ?, "
                + "    dataDeLancamento = ?, "
                + "    duracao = ? "
                + "WHERE"
                + "    id = ?;");

        stmt.setString(1, obj.getTitulo());
        stmt.setInt(2, (obj.getAnoDeLancamento().getValue()));
        stmt.setInt(3, obj.getAtorPrincipal());
        stmt.setInt(4, obj.getAtorCoadjuvante());
        stmt.setInt(5, obj.getGenero().getId());
        stmt.setInt(6, obj.getClassificacao().getId());
        stmt.setDate(7, obj.getDataDeLancamento());
        stmt.setInt(8, obj.getDuracao());
        stmt.setInt(9, obj.getId());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void excluir(Dvd obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM dvd "
                + "WHERE"
                + "    id = ?;");

        stmt.setInt(1, obj.getId());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public List<Dvd> listarTodos() throws SQLException {
        List<Dvd> lista = new ArrayList<>();

        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT"
                + "    d.id idDvd, "
                + "    d.titulo tituloDvd, "
                + "    a.id idAtores, "
                + "    a.nome nomeAtores, "
                + "    a.sobrenome sobrenomeAtores "
                + "FROM"
                + "    dvd d, "
                + "    classificacao c, "
                + "    atores a, "
                + "    genero g "
                + "WHERE"
                + "    d.atorPrincipal_id = a.id ;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Dvd d = new Dvd();
            Atores a = new Atores();
            Classificacao c = new Classificacao();
            Genero g = new Genero();

            d.setId(rs.getInt("idDvd"));
            d.setTitulo(rs.getString("tituloDvd"));
//            d.setAnoDeLancamento(Year.parse(rs.getString("anoDeLancamento")));
//            d.setDuracao(rs.getInt("duracao"));

            a.setId(rs.getInt("idAtores"));
            a.setNome(rs.getString("nomeAtores"));
            a.setSobrenome(rs.getString("sobrenomeAtores"));
//            a.setDataDeEstreia(rs.getDate("dataDeEstreia"));

//            c.setId(rs.getInt("idClassificacao"));
//            c.setDescricao(rs.getString("descricao"));

//            g.setId(rs.getInt("idGenero"));
//            g.setGenero(rs.getString("genero"));

            lista.add(d);

        }

        rs.close();
        stmt.close();

        return lista;
    }

    @Override
    public Dvd obterPorId(int id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
