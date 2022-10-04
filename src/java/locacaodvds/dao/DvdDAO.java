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
        stmt.setInt(3, obj.getAtorPrincipal().getId());
        stmt.setInt(4, obj.getAtorCoadjuvante().getId());
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
        stmt.setInt(3, obj.getAtorPrincipal().getId());
        stmt.setInt(4, obj.getAtorCoadjuvante().getId());
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
                + "    d.anoDeLancamento anoDeLancamentoDvd, "
                + "    d.dataDeLancamento dataDeLancamentoDvd, "
                + "    d.duracao duracaoDvd, "
                + "    g.id idGenero, "
                + "    g.genero generoGenero, "
                + "    c.id idClassificacao, "
                + "    c.descricao descricaoClassificacao, "
                + "    a.id idAtorPrincipal, "
                + "    a.nome nomeAtorPrincipal, "
                + "    a.sobrenome sobrenomeAtorPrincipal, "
                + "    ac.id idAtorCoadjuvante, "
                + "    ac.nome nomeAtorCoadjuvante, "
                + "    ac.sobrenome sobrenomeAtorCoadjuvante "
                + "FROM"
                + "    dvd d, "
                + "    classificacao c, "
                + "    atores a, "
                + "    atores ac, "
                + "    genero g "
                + "WHERE"
                + "    d.atorPrincipal_id = a.id AND"
                + "    d.atorCoadjuvante_id = ac.id AND"
                + "    d.genero_id = g.id AND"
                + "    d.classificacao_id = c.id "
                + "ORDER BY d.titulo, d.dataDeLancamento, d.duracao;");

        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {

            Dvd d = new Dvd();
            Atores a = new Atores();
            Atores ac = new Atores();
            Classificacao c = new Classificacao();
            Genero g = new Genero();

            d.setId(rs.getInt("idDvd"));
            d.setTitulo(rs.getString("tituloDvd"));
            d.setAnoDeLancamento(Year.parse(rs.getString("anoDeLancamentoDvd")));
            d.setDataDeLancamento(rs.getDate("dataDeLancamentoDvd"));
            d.setDuracao(rs.getInt("duracaoDvd"));
            d.setAtorPrincipal(a);
            
            a.setId(rs.getInt("idAtorPrincipal"));
            a.setNome(rs.getString("nomeAtorPrincipal"));
            a.setSobrenome(rs.getString("sobrenomeAtorPrincipal"));
            
            d.setAtorCoadjuvante(ac);
            ac.setId(rs.getInt("idAtorCoadjuvante"));
            ac.setNome(rs.getString("nomeAtorCoadjuvante"));
            ac.setSobrenome(rs.getString("sobrenomeAtorCoadjuvante"));
            
            d.setGenero(g);
            g.setId(rs.getInt("idGenero"));
            g.setGenero(rs.getString("generoGenero"));
            
            d.setClassificacao(c);
            c.setId(rs.getInt("idClassificacao"));
            c.setDescricao(rs.getString("descricaoClassificacao"));
            
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
