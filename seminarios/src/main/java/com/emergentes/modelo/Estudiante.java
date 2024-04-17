package com.emergentes.modelo;

import java.util.List;
import java.util.ArrayList;

public class Estudiante {
    private int id;
    private String fecha;
    private String nombres;
    private String apellidos;
    private String turno;
    private ArrayList<String> seminarios;

    public Estudiante() {
        this.id = 0;
        this.fecha = "";
        this.nombres = "";
        this.apellidos = "";
        this.turno = "";
        this.seminarios = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public ArrayList<String> getSeminarios() {
        return seminarios;
    }

    public void setSeminarios(ArrayList<String> seminarios) {
        this.seminarios = seminarios;
    }



}