/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.File;

/**
 *
 * @author Hanami
 */
public class FolderUtils {
    public static void checkAndCreateFolder(String folderPath) {
        File folder = new File(folderPath);
        if (!folder.exists()) {
            if (folder.mkdirs()) {
                System.out.println("Thư mục đã được tạo: " + folderPath);
            } else {
                System.out.println("Không thể tạo thư mục: " + folderPath);
            }
        } else {
            System.out.println("Thư mục đã tồn tại: " + folderPath);
        }
    }
    
    
}
