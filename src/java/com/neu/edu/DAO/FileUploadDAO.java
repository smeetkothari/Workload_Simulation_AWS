/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.edu.DAO;

import com.neu.edu.pojo.UserUpload;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Dev
 */
public class FileUploadDAO {

    Configuration cfg = new Configuration();
    SessionFactory sf = cfg.configure().buildSessionFactory();
    Session hibsession = sf.openSession();

    public void addFile(UserUpload userUpload) {
        try{
        Transaction tx = hibsession.beginTransaction();
        hibsession.save(userUpload);
        tx.commit();
        }
        catch(Exception e){
            System.out.println(e);
        }
        finally{
            hibsession.close();
        }
    }

}
