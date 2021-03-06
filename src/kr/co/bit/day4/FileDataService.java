package kr.co.bit.day4;


import java.io.*;
import java.util.ArrayList;
import java.util.Date;

public class FileDataService {
//    public Date getDataTime() {
//        Date date = null;
//        date = new Date();
//        return date;
//    }

    public ArrayList<StudentVO> getFileData(String path) throws IOException {
        ArrayList<StudentVO> list = new ArrayList<>();
        File file = new File(path);

        if (file.exists()) {
            System.out.println(file.getName());
            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String line = null;

            while ((line=bufferedReader.readLine())!=null) {
                list.add(this.splitData(line));
            }
            bufferedReader.close();
            fileReader.close();
        }
        return list;
    }

    private StudentVO splitData(String line) {
        StudentVO vo = null;
        String temp1 = line.substring(0,6);
        String temp2 = line.substring(6,10);
        String temp3 = line.substring(10,13);
        String temp4 = line.substring(13,16);
        String temp5 = line.substring(16,19);
        String temp6 = line.substring(19,22);
        String temp7 = line.substring(22,25);
        String temp8 = line.substring(25,28);
        String temp9 = line.substring(28,29);
        String temp10 = line.substring(29,30);
        String temp11 = line.substring(30);

        vo.setStdNo(temp1);
        vo.setEmail(temp2);
        vo.setKor(Integer.parseInt(temp3.trim()));
        vo.setEng(Integer.parseInt(temp4.trim()));
        vo.setMath(Integer.parseInt(temp5.trim()));
        vo.setSci(Integer.parseInt(temp6.trim()));
        vo.setHis(Integer.parseInt(temp7.trim()));
        vo.setTotal(Integer.parseInt(temp8.trim()));
        vo.setMgrCode(temp9);
        vo.setAccCode(temp10);
        vo.setLocalCode(temp11);

        return vo;
    }
}


