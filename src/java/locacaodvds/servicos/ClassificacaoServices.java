package locacaodvds.servicos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import locacaodvds.dao.ClassificacaoDAO;
import locacaodvds.entidade.Classificacao;

/**
 *
 * @author Amanda e Lucas
 */
public class ClassificacaoServices {

    /**
     * Usa AtoresDAO para obter todos as Classificações.
     *
     * @return Lista de Classidicações.
     */
    public List<Classificacao> getTodos() {

        List<Classificacao> lista = new ArrayList<>();
        ClassificacaoDAO dao = null;

        try {
            dao = new ClassificacaoDAO();
            lista = dao.listarTodos();
        } catch (SQLException exc) {
            exc.printStackTrace();
        } finally {
            if (dao != null) {
                try {
                    dao.fecharConexao();
                } catch (SQLException exc) {
                    exc.printStackTrace();
                }
            }
        }

        return lista;

    }
}
