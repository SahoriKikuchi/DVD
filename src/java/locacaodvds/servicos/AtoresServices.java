package locacaodvds.servicos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import locacaodvds.dao.AtoresDAO;
import locacaodvds.entidade.Atores;

/**
 *
 * @author Amanda e Lucas
 */
public class AtoresServices {
     /**
     * Usa AtoresDAO para obter todos os Atores.
     *
     * @return Lista de Atores.
     */
    public List<Atores> getTodos() {

        List<Atores> lista = new ArrayList<>();
        AtoresDAO dao = null;

        try {
            dao = new AtoresDAO();
            lista = dao.listarTodos();
        } catch ( SQLException exc ) {
            exc.printStackTrace();
        } finally {
            if ( dao != null ) {
                try {
                    dao.fecharConexao();
                } catch ( SQLException exc ) {
                    exc.printStackTrace();
                }
            }
        }

        return lista;

    }
}
