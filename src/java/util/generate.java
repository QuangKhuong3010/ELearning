/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

public class generate {

    public static String generateOTP(int length) {
        String characters = "0123456789";
        String result = "";
        int charactersLength = characters.length();
        for (int i = 0; i < length; i++) {
            result += characters.charAt((int) Math.floor(Math.random() * charactersLength));
        }
        return result;
    }
    
    public static String generateString(int length) {
        String characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        String result = "";
        int charactersLength = characters.length();
        for (int i = 0; i < length; i++) {
            result += characters.charAt((int) Math.floor(Math.random() * charactersLength));
        }
        return result;
    }
    
    public String generateCode(int number) {
        String code = "ORDER" + String.format("%06d", number);
        return code;
    }
}
