package locacaodvds.entidade;

import java.sql.Date;
import java.time.Year;

/**
 *
 * @author Amanda e Lucas
 */
public class Dvd {
    
    private Classificacao classificacao;
    private Genero generoDvd;
    private int id;
    private String titulo;
    private Year anoDeLancamento;
    private Atores atorPrincipal;
    private Atores atorCoadjuvante;
    private Date dataDeLancamento;
    private int duracao;


    //dados dos atores, dos gêneros e das classificações etárias deverão ser mantidos através de cadastros específicos
    public Date getDataDeLancamento() {
        return dataDeLancamento;
    }
    
    public void setDataDeLancamento(Date dataDeLancamento) {
        this.dataDeLancamento = dataDeLancamento;
    }

    public Classificacao getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(Classificacao classificacao) {
        this.classificacao = classificacao;
    }

    public Genero getGenero() {
        return generoDvd;
    }

    public void setGenero(Genero genero) {
        this.generoDvd = genero;
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

    public Atores getAtorPrincipal() {
        return atorPrincipal;
    }

    public void setAtorPrincipal(Atores atorPrincipal) {
        this.atorPrincipal = atorPrincipal;
    }

    public Atores getAtorCoadjuvante() {
        return atorCoadjuvante;
    }

    public void setAtorCoadjuvante(Atores atorCoadjuvante) {
        this.atorCoadjuvante = atorCoadjuvante;
    }


    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }
//    @Override
//    public String toString(){
//        return "Dvd{" + "id =" + id + ",titulo =" + titulo + ",anoLancamento=" + anoDeLancamento + ",dataLancamento=" + dataDeLancamento + ", duracao=" + duracao + ", genero = " + genero + ", classificacao= " + classificacao +", atorPrincipal"+ atorPrincipal +", atroCoadjuvante =" + atorCoadjuvante + "}";
//    }



}
