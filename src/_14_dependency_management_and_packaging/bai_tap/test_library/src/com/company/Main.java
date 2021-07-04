package com.company;

import codegym.manhdung.PhuongTrinhBacHai;

import java.util.Arrays;

public class Main {

    public static void main(String[] args) {
        float a = 3;
        float b = 5;
        float c = 2;
        float[] result;
        try {
            result = PhuongTrinhBacHai.giaiPhuongTrinh(a, b, c);
            System.out.println(Arrays.toString(result));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
