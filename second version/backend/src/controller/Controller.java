package controller;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class Controller {
    private boolean AddTransaction(String data) throws Exception {
        String[] splited = data.split("-");
        File Tarakonesh = new File("src/data/clients/"+splited[0]+"/Tarakonesh.text");
        FileWriter fileWriter1 = new FileWriter(Tarakonesh , true);
        if (splited[1].startsWith("n")){
            String value = "-"+splited[1].substring(1);
            fileWriter1.write(value+'\n');
            fileWriter1.flush();
            return true;
        }
        else if (splited[1].startsWith("p")){
            String value = "+"+splited[1].substring(1);
            fileWriter1.write(value+'\n');
            fileWriter1.flush();
            return true;
        }
        return false;
    }
    private boolean ChangeClient(String data) throws Exception {
        //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
        //ChangeClientInformation\nUserName-PhoneNumbe-09121110011
        //ChangeClientInformation\nUserName-PhoneNumbe-09121110011
        String[] splited =  data.split("-");
        File Clients = new File("src/data/clients");
        for (File file : Clients.listFiles()){
            String Username = file.getName();
            if (Username.equals(splited[0])){
                File User = new File("src/data/clients/"+Username+"/Information.text");
                Scanner scanner = new Scanner(User);
                //splitedvoroodi
                //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
                String vorodi = scanner.nextLine();
                String[] splitedvorodi = vorodi.split("-");
                File User2 = new File("src/data/clients/"+Username+"/Information2.text");
                User2.createNewFile();
                FileWriter fileWriter = new FileWriter(User2);
                if(splited[1].equals("Password")){
                    //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
                    //ChangeClientInformation\nUserName-Password-09121110011
                    String input = splitedvorodi[0] + '-'+splited[2] +'-'+splitedvorodi[2]+'-'+splitedvorodi[3]+'-'+splitedvorodi[4]+'-'+splitedvorodi[5]+'-'+splitedvorodi[6];
                    fileWriter.write(input);
                    fileWriter.flush();
                    User.delete();
                    User2.renameTo(new File("src/data/clients/"+Username+"/Information.text"));
                    return true;
                    //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
                }else if (splited[1].equals("PhoneNumber")){
                    //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
                    //ChangeClientInformation\nUserName-Password-09121110011
                    String input = splitedvorodi[0] + '-'+splitedvorodi[1] +'-'+splited[2]+'-'+splitedvorodi[3]+'-'+splitedvorodi[4]+'-'+splitedvorodi[5]+'-'+splitedvorodi[6];
                    fileWriter.write(input);
                    fileWriter.flush();
                    User.delete();
                    User2.renameTo(new File("src/data/clients/"+Username+"/Information.text"));
                    return true;
                }else if (splited[1].equals("TarikhTavalod")){
                    //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
                    //ChangeClientInformation\nUserName-Password-09121110011
                    String input = splitedvorodi[0] + '-'+splitedvorodi[1] +'-'+splitedvorodi[2]+'-'+splited[2]+'-'+splitedvorodi[4]+'-'+splitedvorodi[5]+'-'+splitedvorodi[6];
                    fileWriter.write(input);
                    fileWriter.flush();
                    User.delete();
                    User2.renameTo(new File("src/data/clients/"+Username+"/Information.text"));
                    return true;
                } else if (splited[1].equals("Mojodi")) {
                    //n210000 yani 210000 ta az mojodi kam kon
                    //p210000 yani 210000 ta be mojodi ezafe kon
                    //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
                    int mojodijadid = 0 ;
                    int mojodiavalie = 0 ;
                    if (splited[2].startsWith("n")){
                        if (splitedvorodi[6].equals("null")){
                            mojodiavalie = 0;
                        }
                        else {
                            mojodiavalie = Integer.parseInt(splitedvorodi[6]);
                        }
                        mojodijadid = mojodiavalie - Integer.parseInt(splited[2].substring(1));
                    }
                    else{
                        if (splitedvorodi[6].equals("null")){
                            mojodiavalie = 0 ;
                        }
                        else{
                            mojodiavalie = Integer.parseInt(splitedvorodi[6]);
                        }
                        mojodijadid = mojodiavalie + Integer.parseInt(splited[2].substring(1));
                    }

                    AddTransaction(Username+'-'+splited[2]);
                    String input = splitedvorodi[0] + '-'+splitedvorodi[1] +'-'+splitedvorodi[2]+'-'+splitedvorodi[3]+'-'+splitedvorodi[4]+'-'+splitedvorodi[5]+'-'+String.valueOf(mojodijadid);
                    fileWriter.write(input);
                    fileWriter.flush();
                    User.delete();
                    User2.renameTo(new File("src/data/clients/"+Username+"/Information.text"));
                    return true;
                }else if (splited[1].equals("CodeMeli")) {
                    //username-@password-@phonenumber-@tarikhtavalod-codemeli-adresemail-@mojodi
                    //ChangeClientInformation\nUserName-CodeMeli-3242846532
                    String input = splitedvorodi[0] + '-' + splitedvorodi[1] + '-' + splitedvorodi[2] + '-' + splitedvorodi[3] + '-' + splited[2] + '-' + splitedvorodi[5] + '-' + splitedvorodi[6];
                    fileWriter.write(input);
                    fileWriter.flush();
                    User.delete();
                    User2.renameTo(new File("src/data/clients/" + Username + "/Information.text"));
                    return true;
                }
                else if (splited[1].equals("AddressEmail")) {
                    //username-password-phonenumber-tarikhtavalod-codemeli-addressemail-mojodi
                    //ChangeClientInformation\nUserName-Password-09121110011
                    String input = splitedvorodi[0] + '-' + splitedvorodi[1] + '-' + splitedvorodi[2] + '-' + splitedvorodi[3] + '-' + splitedvorodi[4] + '-' + splited[2] + '-' + splitedvorodi[6];
                    fileWriter.write(input);
                    fileWriter.flush();
                    User.delete();
                    User2.renameTo(new File("src/data/clients/" + Username + "/Information.text"));
                    return true;
                }
            }
        }
        return false;
    }
    private boolean BuyTickets(String data) throws Exception{
        //BuyTickets\nUsername-Company-Mabda-Maghsad-Time-Date-Count
        boolean happen = false;
        String[] splited = data.split("-");
        File UserInformation = new File("src/data/clients/"+splited[0]+"/Information.text");
        File UserParvaz = new File("src/data/clients/"+splited[0]+"/Parvazha.text");
        File SoldParvazAdmin = new File("src/data/admins/"+splited[1]+"/SoldTickets.text");
        File AvailableParvaz = new File("src/data/parvaz/"+splited[1]+".text");
        Scanner AvailScan = new Scanner(AvailableParvaz);
        Scanner UserInfScan = new Scanner(UserInformation);
        File CopyAvailable = new File("src/data/parvaz/"+splited[1]+"2.text");
        CopyAvailable.createNewFile();
        FileWriter AvailableWriter = new FileWriter(CopyAvailable);
        Scanner Userp2 = new Scanner(UserParvaz);
        FileWriter UserParvWrite = new FileWriter(UserParvaz,true);
        FileWriter AdminSold = new FileWriter(SoldParvazAdmin , true);
        while(AvailScan.hasNext()){
            String vorodi = AvailScan.nextLine();
            String[] splitedvorodi = vorodi.split("-");
            if (splitedvorodi[0].equals(splited[2]) && splitedvorodi[1].equals(splited[3]) && splitedvorodi[2].equals(splited[4]) && splitedvorodi[3].equals(splited[5])){
                System.out.println("i found");
                String information = UserInfScan.nextLine();
                String[] splitInf = information.split("-");
                int mojodi = Integer.parseInt(splitInf[4]);
                int price = Integer.parseInt(splitedvorodi[4]) * Integer.parseInt(splited[6]);
                if(mojodi >=price){
                    happen = true;
                    if(Userp2.hasNext()) {
                        UserParvWrite.write('\n'+ data.substring(data.indexOf("-") + 1, data.length()));
                        UserParvWrite.flush();
                    }else{
                        UserParvWrite.write(data.substring(data.indexOf("-") + 1, data.length()));
                        UserParvWrite.flush();
                    }
                    AdminSold.write('\n'+splited[2] + "-"+splited[3]+"-"+splited[4]+"-"+splited[5] + "-"+splited[6]);
                    AdminSold.flush();
                    //ChangeClientInformation\nUserName-PhoneNumbe-09121110011
                    ChangeClient(splited[0]+"-"+"Mojodi"+"-n"+String.valueOf(price));
                    String remain = String.valueOf(Integer.parseInt(splitedvorodi[5]) - Integer.parseInt(splited[6]));
                    String Sel = String.valueOf(Integer.parseInt(splited[6])+Integer.parseInt(splitedvorodi[6]));
                    AvailableWriter.write(splitedvorodi[0]+'-'+splitedvorodi[1]+'-'+splitedvorodi[2]+'-'+splitedvorodi[3]+'-'+splitedvorodi[4]+'-'+remain+'-'+Sel+'\n');
                    AvailableWriter.flush();
                }else{
                    return false;
                }
            }else {
                AvailableWriter.write(vorodi + '\n');
                AvailableWriter.flush();
            }
        }
        AvailableParvaz.delete();
        CopyAvailable.renameTo(new File("src/data/parvaz/"+splited[1]+".text"));
        if(happen){
            return true;
        }
        return false;
    }
    private String getClientInformation(String data) throws Exception{
        String Username = data;
        File Clients = new File("src/data/clients");
        for (File file : Clients.listFiles()) {
            String UsernameFiles = file.getName();
            if (UsernameFiles.equals(Username)){
                File Infor = new File("src/data/clients/"+Username+"/Information.text");
                Scanner scanner = new Scanner(Infor);
                if (scanner.hasNext()){
                    return scanner.nextLine();
                }
            }
        }
        return "";
    }
    private String getParvazInformation(String data) throws Exception{
        //ParvazInformation\nOrigin-Destination-Date-Count
        String[] splited = data.split("-");
        String mabda = splited[0];
        String maghsad = splited[1];
        String Date = splited[2];
        File parvazfile = new File("src/data/parvaz");
        HashMap<String , ArrayList<String>> matlob =new HashMap<>();
        for (File file : parvazfile.listFiles()){
            Scanner fileScanner = new Scanner(file);
            ArrayList<String> s = new ArrayList<>();
            String company = file.getName().substring(0,file.getName().indexOf('.'));
            while (fileScanner.hasNext()){
                String input = fileScanner.nextLine();
                String[] inputSplited = input.split("-");
                if (inputSplited[0].equals(mabda) && inputSplited[1].equals(maghsad) && inputSplited[3].equals(Date) && Integer.parseInt(inputSplited[5]) - Integer.parseInt(splited[3]) >= 0){
                    s.add(input);
                    matlob.put(company,s);
                }
            }
        }
        String output =  "";
        for(String keys : matlob.keySet()){
            output += keys + "  "+matlob.get(keys).toString()+"\n";
        }
        return output;
    }
    private boolean Signup(String data) throws Exception{
        String[] inputs = data.split("-");
        HashMap<String, String> information = new HashMap<>();
        information.put("UserName", inputs[0].trim());
        information.put("Password", inputs[1].trim());
        File file = new File("src/data/clients");
        File file1 = new File("src/data/clients" + "/" + information.get("UserName"));
        File[] directories = file.listFiles(File::isDirectory);
        if (directories != null) {
            for (File dir : directories) {
                String name = dir.getName();
                if (name.equalsIgnoreCase(file1.getName())) {
                    return false;
                }
            }
        }
        file1.mkdir();
        File InformationFile = new File(file1.getPath()+"/Information.text");
        InformationFile.createNewFile();
        FileWriter fileWriter = new FileWriter(InformationFile);
        fileWriter.write(information.get("UserName") + "-"+information.get("Password"));
        //username-password-phonenumber-tarikhtavalod-codemeli-adresemail-mojodi
        fileWriter.write( "-"+"null");
        fileWriter.write( "-"+"null");
        fileWriter.write("-"+"null");
        fileWriter.write("-"+"null");
        fileWriter.write("-"+"null");
        fileWriter.flush();
        fileWriter.close();
        new File(file1.getPath()+"/Parvazha.text").createNewFile();
        new File(file1.getPath()+"/Tarakonesh.text").createNewFile();
        return true;
    }
    private int Login(String data) throws Exception {
        String[] inputs = data.split("-");
        HashMap<String, String> information = new HashMap<>();
        information.put("UserName", inputs[0].trim());
        information.put("Password", inputs[1].trim());
        File file = new File("src/data/clients");
        File file1 = new File("src/data/clients" + "/" + information.get("UserName"));
        File[] directories = file.listFiles(File::isDirectory);
        if (directories != null) {
            for (File dir : directories) {
                String name = dir.getName();
                if (name.equalsIgnoreCase(file1.getName())) {
                    File InformationFile = new File(dir.getPath()+"/Information.text");
                    Scanner scanner = new Scanner(InformationFile);
                    String input = scanner.nextLine();
                    String[] splited = input.split("-");
                    if(splited[1].equals(information.get("Password"))){
                        return 1;
                    }
                    return 2 ;
                }
            }
        }
        return 3;
    }
    private String MyFlights(String data) throws Exception{
        File Parvaz = new File("src/data/clients/"+data+"/Parvazha.text");
        Scanner scanner = new Scanner(Parvaz);
        ArrayList<String> output = new ArrayList<>();
        String list = "";
        while(scanner.hasNext()){
            String temp = scanner.nextLine();
            output.add(temp);
            list += temp + ",";
        }
        System.out.println(list.substring(0,list.length()-1));
        return list.substring(0,list.length()-1);
    }

    private String MyTransactions(String data) throws  Exception{
        File file = new File("src/data/clients/"+data+"/Tarakonesh.text");
        Scanner scanner = new Scanner(file);
        ArrayList<String> output = new ArrayList<>();
        String list = "";
        while (scanner.hasNext()){
            String temp = scanner.nextLine();
            output.add(temp);
            list += temp + ",";
        }
        //return output.toString();
        System.out.println(list.substring(0,list.length()-1));
        return list.substring(0,list.length()-1);
    }
    public String run(String command , String data) throws Exception {
        switch (command) {
            //Signup\nUserName-Password
            case "Signup":
                if(Signup(data)){
                    return "ok signup";
                }
                return "user exist";
            //Login\nUserName-Password
            case "Login":
                int state = Login(data);
                if(state == 1){
                    return "ok login";
                }
                else if (state == 2){
                    return "password is wrong";
                }
                else{
                    return "no user founded";
                }
            //ClientInformation\nUsername
            case "ClientInformation":
                return getClientInformation(data);
            //ParvazInformation\nOrigin-Destination-Date
            case "ParvazInformation":
                return getParvazInformation(data);
            //ChangeClientInformation\nUserName-PhoneNumbe-09121110011
            case "ChangeClientInformation":
                if (ChangeClient(data)){
                    return "عملیات موفق";
                }
                return "خطا!";
            //BuyTickets\nUsername-Company-Mabda-Maghsad-Time-Date-Count
            case "BuyTickets":
                if(BuyTickets(data)){
                    return "عملیات خرید با موفقیت انجام شد";
                }
                return "عملیات خرید با خطا مواجه شد";
            //AddTransaction\nUsername-p4000 or Username-n4000
            case "AddTransaction":
                if(AddTransaction(data)){
                    return "به تراکنش کاربر اضافه شد";
                }
                return "عملیات اضافه کردن تراکنش با خطا مواجه شد";
            //MyFlights\nUserName
            case "MyFlights":
                return MyFlights(data);
            //MyTransactions\nUserName
            case "MyTransactions":
                return MyTransactions(data);
        }
        return "Invalid Request";
    }
}



