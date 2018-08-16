package cn.broccoli.blog.util;

import java.io.FileOutputStream;
import java.io.OutputStream;

import sun.misc.BASE64Decoder;

public class PhotoUtils {

	public static String Base64ToData(String base64Data) {
		String data="";
		try {
			
		
		if(base64Data == null || "".equals(base64Data)){
            throw new Exception("上传失败，上传图片数据为空");
        }else{
            String [] d = base64Data.split("base64,");
            if(d != null && d.length == 2){
                
                data = d[1];
            }else{
                throw new Exception("上传失败，数据不合法");
            }
        }
		} catch (Exception e) {
			// TODO: handle exception
		}
		return data;
	}
	public static boolean Base64ToImage(String imgStr,String imgFilePath) { // 对字节数组字符串进行Base64解码并生成图片
		 System.out.println("Base64ToImage"+imgFilePath);
		if (imgStr==null ||imgStr.equals("")) // 图像数据为空
			return false;
 
		BASE64Decoder decoder = new BASE64Decoder();
		try {
			// Base64解码
			byte[] b = decoder.decodeBuffer(imgStr);
			for (int i = 0; i < b.length; ++i) {
				if (b[i] < 0) {// 调整异常数据
					b[i] += 256;
				}
			}
 
			OutputStream out = new FileOutputStream(imgFilePath);
			out.write(b);
			out.flush();
			out.close();
 
			return true;
		} catch (Exception e) {
			return false;
		}
 
	}

}
