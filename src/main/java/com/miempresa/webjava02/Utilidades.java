/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miempresa.webjava02;

/**
 *
 * @author jhons
 */
public class Utilidades {
    
    public int mayor(int a, int b, int c) {
        if (a>b && a>c){
            return a;
        }
        else if (c>b && c>a) {
            return c;
        }
        else if (b>c && b>a) {
            return c;
        }
        return 0;
    }
    
    public int total(int[] arreglo) {
        int sum = 0;
        for (int i=0;i<arreglo.length;i++) {
            sum = sum + arreglo[i];           
	}
        return sum;
    }
}
