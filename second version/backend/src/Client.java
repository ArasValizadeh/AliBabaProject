import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;

public class Client {
    public static void main(String[] args) throws Exception {
        Socket socket = new Socket("localhost",8000);
        DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
        DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
        //BuyTickets\nUsername-Company-Mabda-Maghsad-Time-Date-Count
        //shiraz-tehran-12:30-1402/5/9-780000-40-0
        //MyTransactions\nUserName
        dataOutputStream.writeUTF("MyFlights\naras");
        System.out.println(dataInputStream.readUTF());
    }
}
