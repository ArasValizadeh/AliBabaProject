package controller;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;

public class Controller {
    private String getClientInformation(){
        return "";
    }
    private String getParvazInformation(String data) throws Exception{
        //ParvazInformation\nOrigin-Destination-Date
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
                if (inputSplited[0].equals(mabda) && inputSplited[1].equals(maghsad) && inputSplited[3].equals(Date) && Integer.parseInt(inputSplited[5]) > 0){
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
    public String run(String command , String data) throws Exception {
        switch (command) {
            //Signup\nUserName-Password
            case "Signup":
                if(Signup(data)){
                    return "ثبت نام با موفقیت انجام شد";
                }
                return "کاربر موجود می‌باشد";
            //Login\nUserName-Password
            case "Login":
                int state = Login(data);
                if(state == 1){
                    return "ورود موفق";
                }
                else if (state == 2){
                    return "رمز اشتباه می‌باشد";
                }
                else{
                    return "کاربر یافت نشد";
                }
            case "ClientInformation":
                return getClientInformation();
            //ParvazInformation\nOrigin-Destination-Date
            case "ParvazInformation":
                return getParvazInformation(data);
            case "ChangeClientInformation":
                return "عملیات موفق";
        }
        return "Invalid Request";
    }
}
