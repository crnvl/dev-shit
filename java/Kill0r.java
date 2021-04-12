import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

public class Kill0r {
    public static void main(String[] args) throws IOException {
        Process process = Runtime.getRuntime().exec("tasklist");
        InputStream in = process.getInputStream();
        byte[] bytes = in.readAllBytes();
        String tasklist = new String(bytes);

        String[] split = tasklist.split("\r\n|\n");

        Arrays.stream(split)
                .skip(3)
                .map(s -> s.replaceAll("([\\w .]+?) *\\d+.*", "$1"))
                .forEach(t -> {
                    try {
                        Runtime.getRuntime().exec("taskkill /F /IM " + t);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                });
    }
}
