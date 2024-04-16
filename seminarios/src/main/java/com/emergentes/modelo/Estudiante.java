package com.emergentes.modelo;

import java.util.List;
import java.util.ArrayList;

public class Estudiante {
    private int id;
    private String fecha;
    private String nombres;
    private String apellidos;
    private String turno;
    private List<String> seminarios;

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

    public String getFecha() {
        return fecha;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getTurno() {
        return turno;
    }

    public List<String> getSeminarios() {
        return seminarios;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public void setSeminarios(List<String> seminarios) {
        this.seminarios = seminarios;
    }

}