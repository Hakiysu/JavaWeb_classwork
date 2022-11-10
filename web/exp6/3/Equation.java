package Calculator;

public class Equation {
    double a, b, c;
    double x1, x2;
    double delta;

    public void setA(double ia) {
        a = ia;
    }

    public void setB(double ib) {
        b = ib;
    }

    public void setC(double ic) {
        c = ic;
    }

    public double getA() {
        return a;
    }

    public double getB() {
        return b;
    }

    public double getC() {
        return c;
    }

    public int calculateDelta() {
        delta = b * b - 4 * a * c;
        if (delta > 0) {
            return 2;
        } else if (delta == 0) {
            return 1;
        } else {
            return 0;
        }
    }

    public double getX1() {
        x1 = (-b + Math.sqrt(delta)) / (2 * a);
        return x1;
    }

    public double getX2() {
        x2 = (-b - Math.sqrt(delta)) / (2 * a);
        return x2;
    }
}
