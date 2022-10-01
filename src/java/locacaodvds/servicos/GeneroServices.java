package locacaodvds.servicos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import locacaodvds.dao.GeneroDAO;
import locacaodvds.entidade.Genero;

/**
 *
 * @author Amanda e Lucas
 */
public class GeneroServices {

    /**
     * Usa GeneroDAO para obter todos os Generôs.
     *
     * @return Lista de Generos.
     */
    public List<Genero> getTodos() {

        List<Genero> lista = new ArrayList<>();
        GeneroDAO dao = null;

        try {
            dao = new GeneroDAO();
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
