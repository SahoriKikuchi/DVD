package locacaodvds.entidade;

import java.sql.Date;

/**
 *
 * @author Amanda e Lucas
 */
public class Atores {
    private int id;
    private String nome;
    private String sobrenome;
    private Date dataDeEstreia; //primeiro filme do ator

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public Date getDataDeEstreia() {
        return dataDeEstreia;
    }

    public void setDataDeEstreia(Date dataDeEstreia) {
        this.dataDeEstreia = dataDeEstreia;
    }
}
