package ru.baib;

import java.util.Scanner;

public class Equation {

    public void solution(double a, double b, double c) {
        double D;
        D = b * b - 4 * a * (c - 7);
        if (D > 0) {
            double x1, x2;
            x1 = (-b - Math.sqrt(D)) / (2 * a);
            x2 = (-b + Math.sqrt(D)) / (2 * a);
            System.out.println("Корни уравнения: x1 = " + x1 + ", x2 = " + x2);
        }
        else if (D == 0) {
            double x;
            x = -b / (2 * a);
            System.out.println("Уравнение имеет единственный корень: x = " + x);
        }
        else {
            System.out.println("Уравнение не имеет действительных корней!");
        }
    }

    public static void main(String[] args) {
        while (true) {
            Scanner scanner = new Scanner(System.in);
            System.out.println("Введите коэффициент a");
            double a = scanner.nextDouble();
            System.out.println("Введите коэффициент b");
            double b = scanner.nextDouble();
            System.out.println("Введите коэффициент c");
            double c = scanner.nextDouble();

            Equation equation = new Equation();
            equation.solution(a, b, c);
        }
    }
}
