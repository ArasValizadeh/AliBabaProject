import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;

public class Client {
    public static void main(String[] args) throws Exception {
        Socket socket = new Socket("localhost",8000);
        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
        DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
        //ParvazInformation\nOrigin-Destination-Date
        dataOutputStream.writeUTF("ParvazInformation\ntehran-kermanshah-1402/12/21");
        System.out.println(dataInputStream.readUTF());
    }
}
