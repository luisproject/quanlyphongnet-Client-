package utils;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;

@SuppressWarnings("all")
public class ListAddress {
	
	private static InetAddress ip;
	private static StringBuilder sb = new StringBuilder();
	
	public static String getMacAddress(){
		try {
			ip = InetAddress.getLocalHost();
			NetworkInterface network = NetworkInterface.getByInetAddress(ip);
			byte[] mac = network.getHardwareAddress();		
			for (int i = 0; i < mac.length; i++) {
				sb.append(String.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : ""));
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (SocketException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}
}
