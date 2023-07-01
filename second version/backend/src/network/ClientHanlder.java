package network;

import controller.Controller;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;
import java.util.Scanner;

public class ClientHanlder extends Thread{
    private Socket socket ;
    public ClientHanlder(Socket socket){
        this.socket = socket ;
    }

    @Override
    public void run() {
        try {
            DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
            DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
            StringBuilder request = new StringBuilder();
            for(int c = dataInputStream.read(); c != 0; c = dataInputStream.read()) {
                request.append((char)c);
            }
            System.out.println(request.toString());
            Scanner scanner = new Scanner(request.toString());
            String command = scanner.nextLine();
            String data = scanner.nextLine();
            System.out.println("command :"+command +"\ndata :"+data);
            String response = new Controller().run(command,data);
            dataOutputStream.writeBytes(response);
            dataOutputStream.flush();
            dataInputStream.close();
            dataOutputStream.close();
            socket.close();
        }catch (Exception exception){
            System.out.println(exception);
        }
    }
    //Signup
    //UserName (email or phoneNumber) - password
    //Login
    //UserName (email or phoneNumber) - password
}
