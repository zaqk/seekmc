package com.seekmc.bean;

import java.util.ArrayList;
import java.util.List;

public class ResultSetBean {

    public List<String> songNameList = new ArrayList<String>();
    public List<String> linkList = new ArrayList<String>();
    public int length;
    public int loop;

    private int songNameListLength;
    private int linkListLength;
    private int songNameArrayLength;
    private int linkArrayLength;

    public void setLength(int length) {
        this.length = length;
    }

    public void setLoop(int i) {
        loop = i;
    }

    public int getSongNameListLength() {
        return songNameListLength;
    }

    public void setSongNameListLength(int songNameListLength) {
        this.songNameListLength = songNameListLength;
    }

    public int getLinkListLength() {
        return linkListLength;
    }

    public void setLinkListLength(int linkListLength) {
        this.linkListLength = linkListLength;
    }

    public String[] copySongNameListArray(String[] songNameArray) {


        songNameArray = (String[]) songNameList.toArray(new String[0]);

        return songNameArray;

    }

    public String[] createLinkListArray() {

        String[] linkArray = new String[getLinkListLength()];

        //linkList.toArray(linkArray);

        return linkArray;

    }



    public void createSongNameList(List<String> songNameList) {
        this.songNameList = new ArrayList<String>(songNameList);

    }

    public void createLinkList(List<String> linkList) {
        this.linkList = new ArrayList<String>(linkList);
    }



    //--------------------------------NEW STUFF----------------------------------------------

    public void cloneLists(List<String> initialSongNameList) {
        for (int i = 0; i < initialSongNameList.size(); i++) {
            songNameList.add(initialSongNameList.get(i));
        }

        //for(int i = 0; i < initialLinkNameList.size(); i++){
        //	linkList.add(initialLinkNameList.get(i));
        //}
    }


}
