package locacaodvds.entidade;

import java.sql.Date;
import java.time.Year;

/**
 *
 * @author Amanda e Lucas
 */
public class Dvd {
    
    private Atores atores;
    private Classificacao classificacao;
    private Genero genero;
    private int id;
    private String titulo;
    private Year anoDeLancamento;
    private int atorPrincipal;
    private int atorCoadjuvante;
    private Date dataDeLancamento;
    private int duracao;


    //dados dos atores, dos gêneros e das classificações etárias deverão ser mantidos através de cadastros específicos
    public Date getDataDeLancamento() {
        return dataDeLancamento;
    }
    
    public void setDataDeLancamento(Date dataDeLancamento) {
        this.dataDeLancamento = dataDeLancamento;
    }

    public Atores getAtores() {
        return atores;
    }

    public void setAtores(Atores atores) {
        this.atores = atores;
    }

    public Classificacao getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(Classificacao classificacao) {
        this.classificacao = classificacao;
    }

    public Genero getGenero() {
        return genero;
    }

    public void setGenero(Genero genero) {
        this.genero = genero;
    }

    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Year getAnoDeLancamento() {
        return anoDeLancamento;
    }

    public void setAnoDeLancamento(Year anoDeLancamento) {
        this.anoDeLancamento = anoDeLancamento;
    }

    public int getAtorPrincipal() {
        return atorPrincipal;
    }

    public void setAtorPrincipal(int atorPrincipal) {
        this.atorPrincipal = atorPrincipal;
    }

    public int getAtorCoadjuvante() {
        return atorCoadjuvante;
    }

    public void setAtorCoadjuvante(int atorCoadjuvante) {
        this.atorCoadjuvante = atorCoadjuvante;
    }


    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }



}
