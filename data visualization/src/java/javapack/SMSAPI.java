/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javapack;
import java.net.*;
import java.io.*;
/**
 *
 * @author Fantasy JAVA
 */
public class SMSAPI {
     public static String url = "";
    public static String charset = "UTF-8";

    private static String buildRequestString(String targetPhoneNo, String message) throws UnsupportedEncodingException {
//        String query = "http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=fantazy&password=1324149931&sendername=fantaz&mobileno=91"+targetPhoneNo+",&message="+URLEncoder.encode(message);
//        return query;
        String message1="Dear user  your msg is "+message+" Sent By FSMSG FSSMSS ";
        String qry="http://smsserver9.creativepoint.in/api.php?username=fantasy&password=596692&to=91"+targetPhoneNo+"&from=FSSMSS&message="+URLEncoder.encode(message1)+"&PEID=1501563800000030506&templateid=1507162882948811640";
        return qry;
    }

    /**
     *
     * @param reciever
     * @param message
     * @return
     * @throws Exception
     */
    public static String sendMessage(String reciever, String message) throws Exception {
        //To establish the connection and perform the post request
        URLConnection connection = new URL(buildRequestString(reciever, message)).openConnection();
        connection.setRequestProperty("Accept-Charset", charset);

        //This automatically fires the request and we can use it to determine the response status
        InputStream response = connection.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(response));
        return br.readLine();
    }

    public static void main(String[] args) throws Exception {

 
        
        sendMessage("6374786369","hello");
        
    }
    
}
