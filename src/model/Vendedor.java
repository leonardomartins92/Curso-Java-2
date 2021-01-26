package model;

import java.util.ArrayList;

public class Vendedor extends Funcionario {
    private static ArrayList<Vendedor> listaVendedores;

    public Vendedor(String name, String telefone, String email, String cpf, String logradouro, String numero, String complemento, String uf, String cidade, String password) {
        super(name, telefone, email, cpf, logradouro, numero, complemento, uf, cidade, password);
    }

    public static ArrayList<Vendedor> getListaVendedores() {
        return listaVendedores;
    }

    public static void setListaVendedores(ArrayList<Vendedor> listaVendedores) {
        Vendedor.listaVendedores = listaVendedores;
    }
}