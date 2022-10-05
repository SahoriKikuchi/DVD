package locacaodvds.servicos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import locacaodvds.dao.DvdDAO;
import locacaodvds.entidade.Dvd;

/**
 *
 * @author Amanda e Lucas
 */
public class DvdServices {
    public List<Dvd> getTodos() {

        List<Dvd> lista = new ArrayList<>();
        DvdDAO dao = null;

        try {
            dao = new DvdDAO();
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
