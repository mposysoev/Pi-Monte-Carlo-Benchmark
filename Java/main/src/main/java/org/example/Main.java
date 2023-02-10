package org.example;

import java.util.Random;

public class Main {
    static double calculatePi(int n) {
        int counter = 0;
        var r = new Random();
        for (int i = 0; i < n; i++) {
            double x = r.nextDouble();
            double y = r.nextDouble();

            if (x * x + y * y < 1.0) {
                counter += 1;
            }
        }
        return 4.0 * (double) counter / (double) n;
    }


    public static void main(String[] args) {
        int numberOfIterations = 1_000_000_000;
        double result = calculatePi(numberOfIterations);
        System.out.println(result);
    }
}