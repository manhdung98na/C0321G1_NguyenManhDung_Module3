package codegym.manhdung;

public class PhuongTrinhBacHai {
    public static void main(String[] args) {

    }

    public static float[] giaiPhuongTrinh(float a, float b, float c) throws PhuongTrinhBacHaiException {
        if (a == 0) {
            throw new PhuongTrinhBacHaiException("Đây là phương trình bậc nhất!!!");
        } else {
            double delta = b * b - 4 * a * c;
            if (delta < 0) {
                return null;
            } else if (delta == 0) {
                return new float[]{-b / (2 * a)};
            } else {
                return new float[]{(-b + (float) Math.sqrt(delta)) / (2 * a), (-b - (float) Math.sqrt(delta)) / (2 * a)};
            }
        }
    }
}
