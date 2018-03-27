package kr.co.bit.day5;

import java.util.Arrays;

public class MemberVO {
    private String id;
    private String pw;
    private String name;
    private String zip;
    private String add1;
    private String add2;
    private String email;
    private String[] lang = new String[4];
    private String tool;
    private String project;

    public MemberVO() {
    }

    public MemberVO(String id, String pw, String name, String zip, String add1, String add2, String email, String[] lang, String tool, String project) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.zip = zip;
        this.add1 = add1;
        this.add2 = add2;
        this.email = email;
        this.lang = lang;
        this.tool = tool;
        this.project = project;
    }


    @Override
    public String toString() {
        return id + " " + pw + " " + name + " " + zip + " " + add1 + " " + add2 + " " + email +
                " " + Arrays.toString(lang) + " " + tool + " " + project;

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip1) {
        this.zip = zip1;
    }

    public String getAdd1() {
        return add1;
    }

    public void setAdd1(String add1) {
        this.add1 = add1;
    }

    public String getAdd2() {
        return add2;
    }

    public void setAdd2(String add2) {
        this.add2 = add2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String[] getLang() {
        return lang;
    }

    public void setLang(String[] lang) {
        this.lang = lang;
    }

    public String getTool() {
        return tool;
    }

    public void setTool(String tool) {
        this.tool = tool;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

}
