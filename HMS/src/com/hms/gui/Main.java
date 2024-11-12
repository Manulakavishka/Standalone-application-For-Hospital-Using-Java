/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.gui;

import com.hms.common.SystemConfigData;
import com.hms.db.db;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.Timer;

/**
 *
 * @author 1zt
 */
public class Main extends javax.swing.JFrame {

    private static Date date;
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");

    /**
     * Creates new form Main
     */
    public Main() {
        initComponents();
        setLocationRelativeTo(null);
        timeAndDate();
        jLabel1.setText(SystemConfigData.getActiveUser());
        jLabel2.setText(SystemConfigData.getUserType());

        if (SystemConfigData.getUserType().equals("1")) {
            btn_pc.setVisible(true);
            btn_ph.setVisible(true);
            btn_opd_co.setVisible(true);
            btn_ipd_co.setVisible(true);
            btn_pr.setVisible(true);
            btn_ipd_r.setVisible(true);
            btn_opd_r.setVisible(true);
            btn_opd_d.setVisible(true);
            btn_ipd_d.setVisible(true);
            btn_tt.setVisible(true);
            btn_su.setVisible(true);
            btn_sr.setVisible(true);
            btn_dm.setVisible(true);
            btn_rt.setVisible(true);
            btn_dc.setVisible(true);
            btn_ut.setVisible(true);
            btn_bm.setVisible(true);

            patientCount();
            checkout();
            pharmacy();
            patientCare();

        } else if (SystemConfigData.getUserType().equals("2")) {
            btn_opd_d.setVisible(true);
            btn_ipd_d.setVisible(true);
            btn_tt.setVisible(true);

            btn_pc.setVisible(false);
            btn_ph.setVisible(false);
            btn_opd_co.setVisible(false);
            btn_ipd_co.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);

            patientCount();

        } else if (SystemConfigData.getUserType().equals("3")) {
            btn_pc.setVisible(false);
            btn_ph.setVisible(false);
            btn_opd_co.setVisible(false);
            btn_ipd_co.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);
            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);

            btn_pr.setVisible(true);
            btn_ipd_r.setVisible(true);
            btn_opd_r.setVisible(true);

        } else if (SystemConfigData.getUserType().equals("4")) {

            btn_pc.setVisible(false);
            btn_opd_co.setVisible(false);
            btn_ipd_co.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);
            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);

            btn_ph.setVisible(true);

            pharmacy();

        } else if (SystemConfigData.getUserType().equals("5")) {
            btn_pc.setVisible(false);
            btn_ph.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);
            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);

            btn_opd_co.setVisible(true);
            btn_ipd_co.setVisible(true);

            checkout();

        } else if (SystemConfigData.getUserType().equals("6")) {

            btn_pc.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);
            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);

            btn_ph.setVisible(true);
            btn_opd_co.setVisible(true);
            btn_ipd_co.setVisible(true);

            checkout();
            pharmacy();

        } else if (SystemConfigData.getUserType().equals("7")) {

            btn_pc.setVisible(false);
            btn_ph.setVisible(false);
            btn_opd_co.setVisible(false);
            btn_ipd_co.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);

            btn_su.setVisible(true);
            btn_sr.setVisible(true);
            btn_dm.setVisible(true);
            btn_rt.setVisible(true);
            btn_dc.setVisible(true);
            btn_ut.setVisible(true);
            btn_bm.setVisible(true);

            patientCount();
            checkout();
            pharmacy();
            patientCare();

        } else if (SystemConfigData.getUserType().equals("8")) {

            btn_pc.setVisible(true);
            btn_ph.setVisible(false);
            btn_opd_co.setVisible(false);
            btn_ipd_co.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);

            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);

            patientCare();
        } else {
            btn_pc.setVisible(false);
            btn_ph.setVisible(false);
            btn_opd_co.setVisible(false);
            btn_ipd_co.setVisible(false);
            btn_pr.setVisible(false);
            btn_ipd_r.setVisible(false);
            btn_opd_r.setVisible(false);
            btn_opd_d.setVisible(false);
            btn_ipd_d.setVisible(false);
            btn_tt.setVisible(false);
            btn_su.setVisible(false);
            btn_sr.setVisible(false);
            btn_dm.setVisible(false);
            btn_rt.setVisible(false);
            btn_dc.setVisible(false);
            btn_ut.setVisible(false);
            btn_bm.setVisible(false);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btn_ph = new javax.swing.JButton();
        btn_pr = new javax.swing.JButton();
        btn_opd_r = new javax.swing.JButton();
        btn_opd_d = new javax.swing.JButton();
        btn_dc = new javax.swing.JButton();
        btn_su = new javax.swing.JButton();
        btn_sr = new javax.swing.JButton();
        btn_bm = new javax.swing.JButton();
        btn_ut = new javax.swing.JButton();
        btn_dm = new javax.swing.JButton();
        btn_opd_co = new javax.swing.JButton();
        btn_ipd_d = new javax.swing.JButton();
        btn_ipd_co = new javax.swing.JButton();
        btn_ipd_r = new javax.swing.JButton();
        btn_rt = new javax.swing.JButton();
        btn_tt = new javax.swing.JButton();
        btn_pc = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Home");
        setAlwaysOnTop(true);
        setPreferredSize(new java.awt.Dimension(1940, 1040));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        btn_ph.setBackground(new java.awt.Color(255, 255, 255));
        btn_ph.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_ph.setText("pharmacy");
        btn_ph.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_phActionPerformed(evt);
            }
        });

        btn_pr.setBackground(new java.awt.Color(255, 255, 255));
        btn_pr.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_pr.setText("Patient Registratin");
        btn_pr.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_prActionPerformed(evt);
            }
        });

        btn_opd_r.setBackground(new java.awt.Color(255, 255, 255));
        btn_opd_r.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_opd_r.setText("OPD Recieption");
        btn_opd_r.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_opd_rActionPerformed(evt);
            }
        });

        btn_opd_d.setBackground(new java.awt.Color(255, 255, 255));
        btn_opd_d.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_opd_d.setText("Opd Doctor");
        btn_opd_d.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_opd_dActionPerformed(evt);
            }
        });

        btn_dc.setBackground(new java.awt.Color(255, 255, 255));
        btn_dc.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_dc.setText("Doctor Charge");
        btn_dc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_dcActionPerformed(evt);
            }
        });

        btn_su.setBackground(new java.awt.Color(255, 255, 255));
        btn_su.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_su.setText("System User");
        btn_su.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_suActionPerformed(evt);
            }
        });

        btn_sr.setBackground(new java.awt.Color(255, 255, 255));
        btn_sr.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_sr.setText("Stuff Registration");
        btn_sr.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_srActionPerformed(evt);
            }
        });

        btn_bm.setBackground(new java.awt.Color(255, 255, 255));
        btn_bm.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_bm.setText("Blood Management");
        btn_bm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_bmActionPerformed(evt);
            }
        });

        btn_ut.setBackground(new java.awt.Color(255, 255, 255));
        btn_ut.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_ut.setText("User Type");
        btn_ut.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_utActionPerformed(evt);
            }
        });

        btn_dm.setBackground(new java.awt.Color(255, 255, 255));
        btn_dm.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_dm.setText("Drug Management");
        btn_dm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_dmActionPerformed(evt);
            }
        });

        btn_opd_co.setBackground(new java.awt.Color(255, 255, 255));
        btn_opd_co.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_opd_co.setText("OPD Check Out");
        btn_opd_co.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_opd_coActionPerformed(evt);
            }
        });

        btn_ipd_d.setBackground(new java.awt.Color(255, 255, 255));
        btn_ipd_d.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_ipd_d.setText("IPD Doctor");
        btn_ipd_d.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ipd_dActionPerformed(evt);
            }
        });

        btn_ipd_co.setBackground(new java.awt.Color(255, 255, 255));
        btn_ipd_co.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_ipd_co.setText("IPD Check Out");
        btn_ipd_co.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ipd_coActionPerformed(evt);
            }
        });

        btn_ipd_r.setBackground(new java.awt.Color(255, 255, 255));
        btn_ipd_r.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_ipd_r.setText("IPD Recieption");
        btn_ipd_r.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ipd_rActionPerformed(evt);
            }
        });

        btn_rt.setBackground(new java.awt.Color(255, 255, 255));
        btn_rt.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_rt.setText("Room Type");
        btn_rt.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_rtActionPerformed(evt);
            }
        });

        btn_tt.setBackground(new java.awt.Color(255, 255, 255));
        btn_tt.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_tt.setText("Treatment Times");
        btn_tt.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ttActionPerformed(evt);
            }
        });

        btn_pc.setBackground(new java.awt.Color(255, 255, 255));
        btn_pc.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        btn_pc.setText("Patient Care");
        btn_pc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_pcActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_pc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_ph, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn_opd_co, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_ipd_co, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn_ipd_r, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_opd_r, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_pr, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn_opd_d, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_ipd_d, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_tt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn_su, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_sr, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_dm, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_rt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_dc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_ut, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(0, 0, 0)
                        .addComponent(btn_bm, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addGap(6, 6, 6))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(btn_pc, javax.swing.GroupLayout.DEFAULT_SIZE, 79, Short.MAX_VALUE)
                .addGap(0, 0, 0)
                .addComponent(btn_ph, javax.swing.GroupLayout.DEFAULT_SIZE, 79, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_opd_co, javax.swing.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE)
                    .addComponent(btn_ipd_co, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_ipd_r, javax.swing.GroupLayout.DEFAULT_SIZE, 88, Short.MAX_VALUE)
                    .addComponent(btn_opd_r, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_pr, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_opd_d, javax.swing.GroupLayout.DEFAULT_SIZE, 79, Short.MAX_VALUE)
                    .addComponent(btn_ipd_d, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_tt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_su, javax.swing.GroupLayout.DEFAULT_SIZE, 69, Short.MAX_VALUE)
                    .addComponent(btn_sr, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_dm, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_rt, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_dc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_ut, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_bm, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(45, 45, 45))
        );

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("Username");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setText("UserType");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel4.setText("time");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setText("OPD Patient Count :");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel5.setText("IPD Patient Count :");

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel6.setText("None");

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel7.setText("None");

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel8.setText("OPD Pharmacy : ");

        jLabel9.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel9.setText("None");

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel10.setText("Patient Care :");

        jLabel11.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel11.setText("IPD Check Out :");

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel12.setText("OPD Check Out :");

        jLabel13.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel13.setText("None");

        jLabel14.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel14.setText("None");

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel15.setText("None");

        jButton1.setBackground(new java.awt.Color(255, 255, 255));
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        jButton1.setText("Refresh");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel8)
                    .addComponent(jLabel3)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel12)
                    .addComponent(jLabel10)
                    .addComponent(jLabel11))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(318, 318, 318)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 231, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addContainerGap())))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(14, 14, 14))
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(jLabel6)
                            .addComponent(jLabel10)
                            .addComponent(jLabel13))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(jLabel7)
                            .addComponent(jLabel12)
                            .addComponent(jLabel14))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel8)
                            .addComponent(jLabel9)
                            .addComponent(jLabel11)
                            .addComponent(jLabel15)))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton1)))
                .addContainerGap(19, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(0, 0, 0))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_pcActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_pcActionPerformed
        patientCare pc = new patientCare();
        pc.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_pcActionPerformed

    private void btn_ttActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ttActionPerformed
        TreatmentTimes tt = new TreatmentTimes();
        tt.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_ttActionPerformed

    private void btn_rtActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_rtActionPerformed
        RoomType rt = new RoomType();
        rt.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_rtActionPerformed

    private void btn_ipd_rActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ipd_rActionPerformed
        PatientAddmittedRegistration par = new PatientAddmittedRegistration();
        par.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_ipd_rActionPerformed

    private void btn_ipd_coActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ipd_coActionPerformed
        IPD_checkOut ic = new IPD_checkOut();
        ic.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_ipd_coActionPerformed

    private void btn_ipd_dActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ipd_dActionPerformed
        IPD_Doctor id = new IPD_Doctor();
        id.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_ipd_dActionPerformed

    private void btn_opd_coActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_opd_coActionPerformed
        CheckOut co = new CheckOut();
        co.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_opd_coActionPerformed

    private void btn_dmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_dmActionPerformed
        DrugManagement dm = new DrugManagement();
        dm.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_dmActionPerformed

    private void btn_utActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_utActionPerformed
        UserType ut = new UserType();
        ut.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_utActionPerformed

    private void btn_bmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_bmActionPerformed
        bloodRegistration br = new bloodRegistration();
        br.setVisible(true);
    }//GEN-LAST:event_btn_bmActionPerformed

    private void btn_srActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_srActionPerformed
        stuffMangement sm = new stuffMangement();
        sm.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_srActionPerformed

    private void btn_suActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_suActionPerformed
        SystemUserManagement su = new SystemUserManagement();
        su.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_suActionPerformed

    private void btn_dcActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_dcActionPerformed
        DoctorCharge dc = new DoctorCharge();
        dc.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_dcActionPerformed

    private void btn_opd_dActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_opd_dActionPerformed
        OPD_Doctor od = new OPD_Doctor();
        od.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_opd_dActionPerformed

    private void btn_opd_rActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_opd_rActionPerformed
        OPDReceiption opd = new OPDReceiption();
        opd.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_opd_rActionPerformed

    private void btn_prActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_prActionPerformed
        PatientRegistration patient = new PatientRegistration();
        patient.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_prActionPerformed

    private void btn_phActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_phActionPerformed
        Pharmacy p = new Pharmacy();
        p.setVisible(true);
        dispose();
    }//GEN-LAST:event_btn_phActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        Main m = new Main();
        this.dispose();
        m.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Main().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_bm;
    private javax.swing.JButton btn_dc;
    private javax.swing.JButton btn_dm;
    private javax.swing.JButton btn_ipd_co;
    private javax.swing.JButton btn_ipd_d;
    private javax.swing.JButton btn_ipd_r;
    private javax.swing.JButton btn_opd_co;
    private javax.swing.JButton btn_opd_d;
    private javax.swing.JButton btn_opd_r;
    private javax.swing.JButton btn_pc;
    private javax.swing.JButton btn_ph;
    private javax.swing.JButton btn_pr;
    private javax.swing.JButton btn_rt;
    private javax.swing.JButton btn_sr;
    private javax.swing.JButton btn_su;
    private javax.swing.JButton btn_tt;
    private javax.swing.JButton btn_ut;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables

    private void timeAndDate() {
        Timer timer = new Timer(1000, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                date = new Date();
                jLabel4.setText(sdf.format(date));
            }
        });
        timer.start();
    }

    private void patientCount() {

        try {
            String sql = "SELECT COUNT(*) AS c FROM opd_reception WHERE stat = '3'";
            ResultSet rs = db.search(sql);
            rs.next();
            jLabel6.setText(rs.getString("c"));

            String sql2 = "SELECT COUNT(*) AS c FROM ipd_p_a_registration WHERE status_id in ('3', '2' )";
            ResultSet rs2 = db.search(sql2);
            rs2.next();
            jLabel7.setText(rs2.getString("c"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void checkout() {
        try {
            String searchSql = "SELECT COUNT(*) AS c FROM opd_reception WHERE stat = '1'";
            ResultSet rs = db.search(searchSql);
            rs.next();
            jLabel14.setText(rs.getString("c"));

            String searchSql2 = "SELECT COUNT(*) AS c FROM ipd_p_a_registration WHERE status_id = '1'";
            ResultSet rs2 = db.search(searchSql2);
            rs2.next();
            jLabel15.setText(rs2.getString("c"));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void patientCare() {
        try {
            String searchSql = "SELECT COUNT(*) AS c FROM ipd_p_a_registration WHERE status_id = '2'";
            ResultSet rs = db.search(searchSql);
            rs.next();
            jLabel13.setText(rs.getString("c"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void pharmacy() {
        try {
            String sql = "SELECT COUNT(*) AS c FROM opd_reception WHERE stat = '2'";
            ResultSet rs = db.search(sql);
            rs.next();
            jLabel9.setText(rs.getString("c"));
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
