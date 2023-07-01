import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;


public class Admin {

    static String todayDate = "1402/4/31";
    static File file = new File("src/data/admins");
    static Scanner input = new Scanner(System.in);
    public static void main(String[] args) throws Exception {
        main();
    }
    private static void addTicket(String company) throws Exception {
        System.out.println("How many tickets do you want to add ?\nwith negative number you can decrease tickets");
        int tedad = input.nextInt();
        System.out.println("Enter Origin");
        String mabda = input.next();
        System.out.println("Enter Destination");
        String maghsad = input.next();
        System.out.println("Enter Time");
        String saat = input.next();
        System.out.println("Enter Date");
        String zaman = input.next();
        System.out.println("Enter Price");
        String gheymat = input.next();
        String mainPath = "src/data/parvaz" + "/" + company + ".text";
        File file1 = new File(mainPath);
        Scanner scanner = new Scanner(file1);
        File file2 = new File("src/data/parvaz" + "/" + company + "2.text");
        FileWriter fileWriter = new FileWriter(file2);
        //shiraz-tehran-12:30-1402/10/12-785000
        boolean aded = false;
        while (scanner.hasNext()) {
            String vorodi = scanner.nextLine();
            String[] splited = vorodi.split("-");
            if (splited[0].equals(mabda) && splited[1].equals(maghsad) && splited[2].equals(saat) && splited[3].equals(zaman) && splited[4].equals(gheymat)) {
                tedad += Integer.parseInt(splited[5]);
                aded = true;
                if (tedad < 0 ){
                    //
                }
                else {
                    fileWriter.write(mabda + '-' + maghsad + '-' + saat + '-' + zaman + '-' + gheymat + '-' + tedad + '-' + splited[6] + '\n');
                    fileWriter.flush();
                }
            }else {
                fileWriter.write(vorodi+'\n');
                fileWriter.flush();
            }
        }
        if(!aded){
            fileWriter.write(mabda + '-' + maghsad + '-' + saat + '-' + zaman + '-'+gheymat + '-'+tedad+'-' + "0");
            fileWriter.flush();
        }
        file1.delete();
        file2.renameTo(new File(mainPath));
        Menu(company);
    }
    private static void analyse(String company) throws Exception{
        File sold = new File("src/data/admins/"+company+"/SoldTickets.text");
        Scanner scanner = new Scanner(sold);
        ArrayList<String> month3 = new ArrayList<>();
        ArrayList<String> month6 = new ArrayList<>();
        ArrayList<String> month9 = new ArrayList<>();
        ArrayList<String> monthMore9 = new ArrayList<>();
        while(scanner.hasNext()){
            String input = scanner.nextLine();
            String[] splited =input.split("-");
            if (Checktime(splited[3],todayDate) == 3){
                month3.add(input);
            }
            else if (Checktime(splited[3],todayDate) == 6){
                month6.add(input);
            }
            else if (Checktime(splited[3],todayDate) == 9){
                month9.add(input);
            }
            else{
                monthMore9.add(input);
            }
        }
        System.out.println(" 0-3 months ago (1) / 3 - 6 months ago (2) / 6 - 9 months ago (3) / more than 9 months ago (4)");
        int state = input.nextInt();
        if (state == 1){
            ShowAnalyse(month3);
        }
        else if (state == 2){
            ShowAnalyse(month6);
        }
        else if (state == 3 ){
            ShowAnalyse(month9);
        }
        else {
            ShowAnalyse(monthMore9);
        }
        Menu(company);
    }

    private static void ShowAnalyse(ArrayList<String> month) {
        HashMap<String,String> datas = new HashMap<>();
        int daramad = 0 ;
        for(String s : month){
            String[] s2 = s.split("-");
            String origin = s2[0];
            String dest = s2[1];
            String price = s2[4];
            String numbers = s2[5];
            String concat = origin+'-'+dest;
            if (datas.containsKey(concat)){
                int value = Integer.parseInt(datas.get(concat)) + Integer.parseInt(numbers);
                datas.put(concat,String.valueOf(value));
            }
            else{
                datas.put(concat,numbers);
            }
            daramad += Integer.parseInt(price) * Integer.parseInt(numbers);
        }
        for (String keys : datas.keySet()){
            String[] road = keys.split("-");
            System.out.println(road[0] + " ---> " + road[1] + "  | Tickets have been sold : "+datas.get(keys));
        }
        System.out.println("total income : "+daramad);
    }

    private static int Checktime(String Date, String todayDate) {
        String[] splitedDate = Date.split("/");
        int year = Integer.parseInt(splitedDate[0]);
        int month = Integer.parseInt(splitedDate[1]);
        int day = Integer.parseInt(splitedDate[2]);
        String[] todayDatesplited = todayDate.split("/");
        int todayYear = Integer.parseInt(todayDatesplited[0]);
        int todayMonth = Integer.parseInt(todayDatesplited[1]);
        if (todayYear >= year){
            if(todayYear == year){
                if (todayMonth - month <= 3){
                    return 3;
                }
                else if(todayMonth - month <=6 ){
                    return 6;
                }
                else if (todayMonth - month <= 9){
                    return 9;
                }
            }
            else{
                todayMonth += 12 ;
                if (todayMonth - month<= 3){
                    return 3;
                }
                else if(todayMonth - month <=6 ){
                    return 6;
                }
                else if (todayMonth - month <= 9){
                    return 9;
                }
            }
        }
        return -1;
    }
    private static void showTickets(String company) throws Exception{
        String mainPath = "src/data/parvaz" + "/" + company + ".text";
        File bilitfile = new File(mainPath);
        Scanner input = new Scanner(bilitfile);
        while(input.hasNext()){
            String vorodi = input.nextLine();
            String[] splited=vorodi.split("-");
            System.out.println(splited[0] + " ---> "+splited[1] + "   Time : "+splited[2] + " Available Tickets : " +splited[5] + " Sales Tickets : "+splited[6]);
        }
        Menu(company);
    }
    private static void Menu(String company) throws Exception{
        System.out.println("add tickets(1)/analyse(2)/show tickets(3) / exit(4)");
        int state ;
        state = input.nextInt();
        if (state == 1) {
            addTicket(company);
        } else if (state == 2) {
            analyse(company);
        }
        else if(state == 3){
            showTickets(company);
        }
        else{
            main();
        }
    }
    private static void Login() throws Exception {
        System.out.println("Enter your company");
        String company = input.next();
        System.out.println("Enter your password");
        String password = input.next();
        File[] directories = file.listFiles(File::isDirectory);
        if (directories != null) {
            for (File dir : directories) {
                String name = dir.getName();
                if (name.equalsIgnoreCase(company)) {
                    File InformationFile = new File(dir.getPath() + "/Information.text");
                    Scanner scanner = new Scanner(InformationFile);
                    String input2 = scanner.nextLine();
                    String[] splited = input2.split("-");
                    if (splited[1].equals(password)) {
                        System.out.println("successfully login !");
                        Menu(company);
                    }
                    else {
                        System.out.println("wrong pass");
                        Login();
                    }
                }
            }
        }
        System.out.println("Admin not found");
        main();
    }

    private static void main() throws Exception{
        System.out.println("Login(1) / Signup(2) / Exit(3)");
        int state = input.nextInt();
        if (state == 1) {
            Login();
        } else if (state == 2) {
            Signup();
        }
    }

    private static void Signup() throws Exception {
        System.out.println("Enter your company");
        String company = input.next();
        System.out.println("Enter your password");
        String password = input.next();
        File[] directories = file.listFiles(File::isDirectory);
        for (File dir : directories) {
            String name = dir.getName();
            if (name.equalsIgnoreCase(company)) {
                System.out.println("Company existed");
                main();
            }
        }
        File newfile = new File(file.getPath() + '/' + company);
        newfile.mkdir();
        File InformationFile = new File(newfile.getPath() + "/Information.text");
        File SoldTickets = new File(newfile.getPath() + "/SoldTickets.text");
        SoldTickets.createNewFile();
        InformationFile.createNewFile();
        FileWriter fileWriter = new FileWriter(InformationFile);
        fileWriter.write(company + "-" + password);
        fileWriter.flush();
        fileWriter.close();
        main();
    }

}