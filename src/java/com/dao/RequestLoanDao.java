/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.bean.RequestLoanBean;
import com.mysql.jdbc.PreparedStatement;
import com.util.DBConnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author brass
 */
public class RequestLoanDao {

    public int insert(RequestLoanBean requestLoatBean) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = null;
        con = dbConnect.openNewConnection();
        String sql = "insert into tbl_requestloan values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate(),?,sysdate())";
        PreparedStatement p = null;
        int i = 0;
        try {
            p = (PreparedStatement) con.prepareStatement(sql);
            p.setInt(1, 0);
            p.setString(2, requestLoatBean.getCitizen_id());
            p.setString(3, requestLoatBean.getTitle_type());
            p.setString(4, requestLoatBean.getFirstName());
            p.setString(5, requestLoatBean.getLastName());
            p.setString(6, requestLoatBean.getBirthdate());
            p.setInt(7, requestLoatBean.getAge());
            p.setString(8, requestLoatBean.getStatustype());
            p.setString(9, requestLoatBean.getMobile());
            p.setString(10, requestLoatBean.getEmail());

            p.setString(11, requestLoatBean.getNationality());
            p.setString(12, requestLoatBean.getJobtype());
            p.setString(13, requestLoatBean.getProvince());
            p.setString(14, requestLoatBean.getAmphur());
            p.setString(15, requestLoatBean.getDistrict());
            p.setString(16, requestLoatBean.getAddress());
            p.setString(17, requestLoatBean.getHometype());
            p.setDouble(18, requestLoatBean.getTradingprice());
            p.setDouble(19, requestLoatBean.getCreditloan());
            p.setInt(20, requestLoatBean.getLncome_per_month());
            p.setDouble(21, requestLoatBean.getPeriodloan());
            p.setDouble(22, requestLoatBean.getNetprofit());
            p.setString(23, requestLoatBean.getCopyidcard());
            p.setString(25, requestLoatBean.getCopylicenses());
            p.setString(26, requestLoatBean.getCopydocumenthome());
            p.setString(27, requestLoatBean.getCopymarriage());
            p.setString(28, requestLoatBean.getCopy_rename());
            p.setString(29, requestLoatBean.getSalary_slip());
            p.setString(30, requestLoatBean.getCopy_bankaccount());
            p.setString(31, requestLoatBean.getLoanstatustype());

            p.setString(3, requestLoatBean.getCitizen_p());
            p.setString(4, requestLoatBean.getTitle_p());
            p.setString(5, requestLoatBean.getFirstname_p());
            p.setString(6, requestLoatBean.getLastname_p());
            p.setString(7, requestLoatBean.getBirthdate_p());
            p.setInt(8, requestLoatBean.getAge_p());
            p.setString(9, requestLoatBean.getStatustype_p());
            p.setString(10, requestLoatBean.getMobile_p());
            p.setString(11, requestLoatBean.getEmail_p());
            p.setString(12, requestLoatBean.getNationality_p());
            p.setString(13, requestLoatBean.getJobtype_p());
            p.setString(14, requestLoatBean.getProvince_p());
            p.setString(15, requestLoatBean.getAmphur_p());
            p.setString(16, requestLoatBean.getDistrict_p());
            p.setString(17, requestLoatBean.getAddress_p());
            p.setDouble(18, requestLoatBean.getPeriodloan_p());
            p.setDouble(19, requestLoatBean.getNetprofit_p());
            p.setString(20, requestLoatBean.getCopyidcard_p());
            p.setString(21, requestLoatBean.getCopydocumenthome_p());
            p.setString(22, requestLoatBean.getSalary_slip_p());
            p.setString(23, requestLoatBean.getCopy_bankaccount_p());
            p.setString(24, requestLoatBean.getCitizen_k());
            p.setString(25, requestLoatBean.getTitle_k());
            p.setString(26, requestLoatBean.getFirstname_k());
            p.setString(27, requestLoatBean.getLastname_k());
            p.setString(28, requestLoatBean.getBirthdate_k());
            p.setInt(29, requestLoatBean.getAge_k());
            p.setString(30, requestLoatBean.getStatustype_k());
            p.setString(31, requestLoatBean.getMobile_k());
            p.setString(32, requestLoatBean.getEmail_k());
            p.setString(33, requestLoatBean.getNationality_k());
            p.setString(34, requestLoatBean.getJobtype_k());
            p.setString(35, requestLoatBean.getProvince_k());
            p.setString(36, requestLoatBean.getAmphur_k());
            p.setString(37, requestLoatBean.getDistrict_k());
            p.setString(38, requestLoatBean.getAddress_k());
            p.setDouble(39, requestLoatBean.getPeriodloan_k());
            p.setDouble(40, requestLoatBean.getNetprofit_k());
            p.setString(41, requestLoatBean.getCopyidcard_k());
            p.setString(42, requestLoatBean.getCopydocumenthome_k());
            p.setString(43, requestLoatBean.getSalary_slip_k());
            p.setString(44, requestLoatBean.getCopy_bankaccount_k());

            p.setString(32, requestLoatBean.getFirstName());
            p.setString(33, requestLoatBean.getFirstName());
            i = p.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return i;
    }
    //       ==================insertn==========================
//    public static void main(String[] args) throws Exception {
// //       ==================== insertn========================

//    public static void main(String[] args) throws Exception {
//        RequestLoanDao dao = new RequestLoanDao();
//        RequestLoanBean bean = new RequestLoanBean();
//        int i = 0;
////        bean.setLoanreq_id(1);
//        bean.setCitizen_id("2342");
//        bean.setTitle_type("นาย");
//        bean.setFirstname("สุเมธ");
//        bean.setLastname("kaenkaew");
//        bean.setBirthdate("10");
//        bean.setAge(22);
//        bean.setNationality("thai");
//        bean.setStatustype("cod");
//        bean.setMobile("0833412924");
//        bean.setEmail("sumet");
//        bean.setAddressregistration("rmu");
//        bean.setAddresscurrent("aaa");
//        bean.setAddresssenddoc("aaa");
//        bean.setJobtype("ss");
//        bean.setHometype("aaa");
//        bean.setTradingprice(23.23);
//        bean.setCreditloan(324.32);
//        bean.setLncome_per_month(1);
//        bean.setPeriodloan(53.65);
//        bean.setNetprofit(32.32);
//        bean.setCopyidcard("334.jpg");
//        bean.setCopylicenses("334.jpg");
//        bean.setCopydocumenthome("534.jpg");
//        bean.setCopymarriage("3434.jpg");
//        bean.setCopy_rename("34534.jpg");
//        bean.setSalary_slip("34534.jpg");
//        bean.setCopy_bankaccount("34534.jpg");
//        bean.setLoanstatustype("รอตรวจสอบ");
//        try {
//            i = dao.insert(bean);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        System.out.println(i);
//    }
    public int insertbank(RequestLoanBean requestLoatBean) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = null;
        con = dbConnect.openNewConnection();
        String sql = "insert into tbl_requestloan values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate(),?,sysdate())";
        PreparedStatement p = null;
        int i = 0;
        try {
            p = (PreparedStatement) con.prepareStatement(sql);
            p.setInt(1, 0);
            p.setInt(2, requestLoatBean.getLoanreq_id());
            p.setString(3, requestLoatBean.getCitizen_id());
            p.setString(4, requestLoatBean.getTitle_type());
            p.setString(5, requestLoatBean.getFirstName());
            p.setString(6, requestLoatBean.getLastName());
            p.setString(7, requestLoatBean.getBirthdate());
            p.setInt(8, requestLoatBean.getAge());
            p.setString(9, requestLoatBean.getStatustype());
            p.setString(10, requestLoatBean.getMobile());
            p.setString(11, requestLoatBean.getEmail());
            p.setString(12, requestLoatBean.getNationality());
            p.setString(13, requestLoatBean.getJobtype());
            p.setString(14, requestLoatBean.getProvince());
            p.setString(15, requestLoatBean.getAmphur());
            p.setString(16, requestLoatBean.getDistrict());
            p.setString(17, requestLoatBean.getAddress());

            p.setString(18, requestLoatBean.getHometype());
            p.setDouble(19, requestLoatBean.getTradingprice());
            p.setDouble(20, requestLoatBean.getCreditloan());
            p.setInt(21, requestLoatBean.getLncome_per_month());
            p.setDouble(22, requestLoatBean.getPeriodloan());
            p.setDouble(23, requestLoatBean.getNetprofit());
            p.setString(24, requestLoatBean.getCopyidcard());
            p.setString(25, requestLoatBean.getCopylicenses());
            p.setString(26, requestLoatBean.getCopydocumenthome());
            p.setString(27, requestLoatBean.getCopymarriage());
            p.setString(28, requestLoatBean.getCopy_rename());
            p.setString(29, requestLoatBean.getSalary_slip());
            p.setString(30, requestLoatBean.getCopy_bankaccount());
            p.setString(31, requestLoatBean.getLoanstatustype());
//            if ("สมรส".equals(requestLoatBean.getStatustype())) {
                p.setString(32, requestLoatBean.getCitizen_p());
                p.setString(33, requestLoatBean.getTitle_p());
                p.setString(34, requestLoatBean.getFirstname_p());
                p.setString(35, requestLoatBean.getLastname_p());
                p.setString(36, requestLoatBean.getBirthdate_p());
                p.setInt(37, requestLoatBean.getAge_p());
                p.setString(38, requestLoatBean.getStatustype_p());
                p.setString(39, requestLoatBean.getMobile_p());
                p.setString(40, requestLoatBean.getEmail_p());
                p.setString(41, requestLoatBean.getNationality_p());
                p.setString(42, requestLoatBean.getJobtype_p());
                p.setString(43, requestLoatBean.getProvince_p());
                p.setString(44, requestLoatBean.getAmphur_p());
                p.setString(45, requestLoatBean.getDistrict_p());
                p.setString(46, requestLoatBean.getAddress_p());
                p.setDouble(47, requestLoatBean.getPeriodloan_p());
                p.setDouble(48, requestLoatBean.getNetprofit_p());
                p.setString(49, requestLoatBean.getCopyidcard_p());
                p.setString(50, requestLoatBean.getCopydocumenthome_p());
                p.setString(51, requestLoatBean.getSalary_slip_p());
                p.setString(52, requestLoatBean.getCopy_bankaccount_p());
          
            p.setString(53, requestLoatBean.getCitizen_k());
            p.setString(54, requestLoatBean.getTitle_k());
            p.setString(55, requestLoatBean.getFirstname_k());
            p.setString(56, requestLoatBean.getLastname_k());
            p.setString(57, requestLoatBean.getBirthdate_k());
            p.setInt(58, requestLoatBean.getAge_k());
            p.setString(59, requestLoatBean.getStatustype_k());
            p.setString(60, requestLoatBean.getMobile_k());
            p.setString(61, requestLoatBean.getEmail_k());
            p.setString(62, requestLoatBean.getNationality_k());
            p.setString(63, requestLoatBean.getJobtype_k());
            p.setString(64, requestLoatBean.getProvince_k());
            p.setString(65, requestLoatBean.getAmphur_k());
            p.setString(66, requestLoatBean.getDistrict_k());
            p.setString(67, requestLoatBean.getAddress_k());
            p.setDouble(68, requestLoatBean.getPeriodloan_k());
            p.setDouble(69, requestLoatBean.getNetprofit_k());
            p.setString(70, requestLoatBean.getCopyidcard_k());
            p.setString(71, requestLoatBean.getCopydocumenthome_k());
            p.setString(72, requestLoatBean.getSalary_slip_k());
            p.setString(73, requestLoatBean.getCopy_bankaccount_k());

            p.setString(74, requestLoatBean.getFirstName());
            p.setString(75, requestLoatBean.getFirstName());
            i = p.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return i;
    }
//    =====================================================

    public RequestLoanBean selectById(int loanreq_id) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = null;
        con = dbConnect.openNewConnection();
        ResultSet rs = null;
        RequestLoanBean bean = null;
        String sql = "select * from tbl_requestloan  where loanreq_id = ?";
        PreparedStatement p = null;

        try {
            p = (PreparedStatement) con.prepareStatement(sql);
            p.setInt(1, loanreq_id);
            rs = p.executeQuery();
            while (rs.next()) {
                bean = new RequestLoanBean();
                bean.setLoanreq_id(rs.getInt("loanreq_id"));
                bean.setCitizen_id(rs.getString("citizen_id"));
                bean.setTitle_type(rs.getString("title_type"));
                bean.setFirstName(rs.getString("firstName"));
                bean.setLastName(rs.getString("lastName"));
                bean.setBirthdate(rs.getString("birthdate"));
                bean.setAge(rs.getInt("age"));
                bean.setStatustype(rs.getString("statustype"));
                bean.setMobile(rs.getString("mobile"));
                bean.setEmail(rs.getString("email"));
                bean.setNationality(rs.getString("nationality"));
                bean.setJobtype(rs.getString("jobtype"));
                bean.setProvince(rs.getString("province"));
                bean.setAmphur(rs.getString("amphur"));
                bean.setDistrict(rs.getString("district"));
                bean.setAddress(rs.getString("address"));
                bean.setHometype(rs.getString("hometype"));
                bean.setTradingprice(rs.getDouble("tradingprice"));
                bean.setCreditloan(rs.getDouble("creditloan"));
                bean.setLncome_per_month(rs.getInt("lncome_per_month"));
                bean.setPeriodloan(rs.getDouble("periodloan"));
                bean.setNetprofit(rs.getDouble("netprofit"));
                bean.setCopyidcard(rs.getString("copyidcard"));
                bean.setCopylicenses(rs.getString("copylicenses"));
                bean.setCopydocumenthome(rs.getString("copydocumenthome"));
                bean.setCopymarriage(rs.getString("copymarriage"));
                bean.setCopy_rename(rs.getString("copy_rename"));
                bean.setSalary_slip(rs.getString("salary_slip"));
                bean.setCopy_bankaccount(rs.getString("copy_bankaccount"));
                bean.setLoanstatustype(rs.getString("loanstatustype"));
                
                      bean.setCitizen_p(rs.getString("citizen_p"));
                bean.setTitle_p(rs.getString("title_p"));
                bean.setFirstname_p(rs.getString("firstname_p"));
                bean.setLastname_p(rs.getString("lastname_p"));
                bean.setBirthdate_p(rs.getString("birthdate_p"));
                bean.setAge_p(rs.getInt("age_p"));
                bean.setStatustype_p(rs.getString("statustype_p"));
                bean.setMobile_p(rs.getString("mobile_p"));
                bean.setEmail_p(rs.getString("email_p"));
                bean.setNationality_p(rs.getString("nationality_p"));
                bean.setJobtype_p(rs.getString("jobtype_p"));
                bean.setProvince_p(rs.getString("province_p"));
                bean.setAmphur_p(rs.getString("amphur_p"));
                bean.setDistrict_p(rs.getString("district_p"));
                bean.setAddress_p(rs.getString("address_p"));
                bean.setPeriodloan_p(rs.getDouble("periodloan_p"));
                bean.setNetprofit_p(rs.getDouble("netprofit_p"));
                bean.setCopyidcard_p(rs.getString("copyidcard_p"));
                bean.setCopydocumenthome_p(rs.getString("copydocumenthome_p"));
                bean.setSalary_slip_p(rs.getString("salary_slip_p"));
                bean.setCopy_bankaccount_p(rs.getString("copy_bankaccount_p"));

                bean.setCitizen_k(rs.getString("citizen_k"));
                bean.setTitle_k(rs.getString("title_k"));
                bean.setFirstname_k(rs.getString("firstname_k"));
                bean.setLastname_k(rs.getString("lastname_k"));
                bean.setBirthdate_k(rs.getString("birthdate_k"));
                bean.setAge_k(rs.getInt("age_k"));
                bean.setStatustype_k(rs.getString("statustype_k"));
                bean.setMobile_k(rs.getString("mobile_k"));
                bean.setEmail_k(rs.getString("email_k"));
                bean.setNationality_k(rs.getString("nationality_k"));
                bean.setJobtype_k(rs.getString("jobtype_k"));
                bean.setProvince_k(rs.getString("province_k"));
                bean.setAmphur_k(rs.getString("amphur_k"));
                bean.setDistrict_k(rs.getString("district_k"));
                bean.setAddress_k(rs.getString("address_k"));
                bean.setPeriodloan_k(rs.getDouble("periodloan_k"));
                bean.setNetprofit_k(rs.getDouble("netprofit_k"));
                bean.setCopyidcard_k(rs.getString("copyidcard_k"));
                bean.setCopydocumenthome_k(rs.getString("copydocumenthome_k"));
                bean.setSalary_slip_k(rs.getString("salary_slip_k"));
                bean.setCopy_bankaccount_k(rs.getString("copy_bankaccount_k"));
                
                bean.setCreateby(rs.getString("createby"));
                bean.setUpdateby(rs.getString("updateby"));
                bean.setCreated(rs.getString("created"));
                bean.setUpdated(rs.getString("updated"));
            }

        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        return bean;
    }

    public int updateBystatus(RequestLoanBean requestLoatBean) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = dbConnect.openNewConnection();
        String sql = "update tbl_requestloan set loanstatustype=?, updateby=?, updated=sysdate() where loanreq_id=?";
        PreparedStatement p = null;
        int i = 0;
        try {
            p = (PreparedStatement) con.prepareStatement(sql);
            p.setString(1, requestLoatBean.getLoanstatustype());
            p.setString(2, requestLoatBean.getUpdateby());
            p.setInt(3, requestLoatBean.getLoanreq_id());
            i = p.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println(i);
        }
        return i;
    }
//
//    public static void main(String[] args) throws Exception {
//// //       ==================== ========================
//        RequestLoanDao dao = new RequestLoanDao();
//        RequestLoanBean bean = new RequestLoanBean();
//        bean = dao.selectById(1);
//        System.out.println(bean.getLoanreq_id());
//        System.out.println(bean.getCitizen_id());
//        
//        System.out.println(bean.getFirstname());
//        System.out.println(bean.getLastname());
//        System.out.println(bean.getAge());
//        System.out.println(bean.getEmail());
//
//    }

    public RequestLoanBean selectloanstatustype(String loanstatustype) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = null;
        con = dbConnect.openNewConnection();
        ResultSet rs = null;
        RequestLoanBean bean = null;
        String sql = "select * from tbl_requestloan  where loanstatustype = ?";
        PreparedStatement p = null;

        try {
            p = (PreparedStatement) con.prepareStatement(sql);
            p.setString(1, loanstatustype);
            rs = p.executeQuery();
            while (rs.next()) {
                bean = new RequestLoanBean();
                bean.setLoanreq_id(rs.getInt("loanreq_id"));
                bean.setCitizen_id(rs.getString("citizen_id"));
                bean.setTitle_type(rs.getString("title_type"));
                bean.setFirstName(rs.getString("firstName"));
                bean.setLastName(rs.getString("lastName"));
                bean.setBirthdate(rs.getString("birthdate"));
                bean.setAge(rs.getInt("age"));
                bean.setStatustype(rs.getString("statustype"));
                bean.setMobile(rs.getString("mobile"));
                bean.setEmail(rs.getString("email"));

                bean.setNationality(rs.getString("nationality"));
                bean.setJobtype(rs.getString("jobtype"));
                bean.setProvince(rs.getString("province"));
                bean.setAmphur(rs.getString("amphur"));
                bean.setDistrict(rs.getString("district"));
                bean.setAddress(rs.getString("address"));
//                bean.setAddressregistration(rs.getString("addressregistration"));
//                bean.setAddresscurrent(rs.getString("addresscurrent"));
//                bean.setAddresssenddoc(rs.getString("addresssenddoc"));
                bean.setHometype(rs.getString("hometype"));
                bean.setTradingprice(rs.getDouble("tradingprice"));
                bean.setCreditloan(rs.getDouble("creditloan"));
                bean.setLncome_per_month(rs.getInt("lncome_per_month"));
                bean.setPeriodloan(rs.getDouble("periodloan"));
                bean.setNetprofit(rs.getDouble("netprofit"));
                bean.setCopyidcard(rs.getString("copyidcard"));
                bean.setCopylicenses(rs.getString("copylicenses"));
                bean.setCopydocumenthome(rs.getString("copydocumenthome"));
                bean.setCopymarriage(rs.getString("copymarriage"));
                bean.setCopy_rename(rs.getString("copy_rename"));
                bean.setSalary_slip(rs.getString("salary_slip"));
                bean.setCopy_bankaccount(rs.getString("copy_bankaccount"));
                bean.setLoanstatustype(rs.getString("loanstatustype"));
                
                      bean.setCitizen_p(rs.getString("citizen_p"));
                bean.setTitle_p(rs.getString("title_p"));
                bean.setFirstname_p(rs.getString("firstname_p"));
                bean.setLastname_p(rs.getString("lastname_p"));
                bean.setBirthdate_p(rs.getString("birthdate_p"));
                bean.setAge_p(rs.getInt("age_p"));
                bean.setStatustype_p(rs.getString("statustype_p"));
                bean.setMobile_p(rs.getString("mobile_p"));
                bean.setEmail_p(rs.getString("email_p"));
                bean.setNationality_p(rs.getString("nationality_p"));
                bean.setJobtype_p(rs.getString("jobtype_p"));
                bean.setProvince_p(rs.getString("province_p"));
                bean.setAmphur_p(rs.getString("amphur_p"));
                bean.setDistrict_p(rs.getString("district_p"));
                bean.setAddress_p(rs.getString("address_p"));
                bean.setPeriodloan_p(rs.getDouble("periodloan_p"));
                bean.setNetprofit_p(rs.getDouble("netprofit_p"));
                bean.setCopyidcard_p(rs.getString("copyidcard_p"));
                bean.setCopydocumenthome_p(rs.getString("copydocumenthome_p"));
                bean.setSalary_slip_p(rs.getString("salary_slip_p"));
                bean.setCopy_bankaccount_p(rs.getString("copy_bankaccount_p"));

                bean.setCitizen_k(rs.getString("citizen_k"));
                bean.setTitle_k(rs.getString("title_k"));
                bean.setFirstname_k(rs.getString("firstname_k"));
                bean.setLastname_k(rs.getString("lastname_k"));
                bean.setBirthdate_k(rs.getString("birthdate_k"));
                bean.setAge_k(rs.getInt("age_k"));
                bean.setStatustype_k(rs.getString("statustype_k"));
                bean.setMobile_k(rs.getString("mobile_k"));
                bean.setEmail_k(rs.getString("email_k"));
                bean.setNationality_k(rs.getString("nationality_k"));
                bean.setJobtype_k(rs.getString("jobtype_k"));
                bean.setProvince_k(rs.getString("province_k"));
                bean.setAmphur_k(rs.getString("amphur_k"));
                bean.setDistrict_k(rs.getString("district_k"));
                bean.setAddress_k(rs.getString("address_k"));
                bean.setPeriodloan_k(rs.getDouble("periodloan_k"));
                bean.setNetprofit_k(rs.getDouble("netprofit_k"));
                bean.setCopyidcard_k(rs.getString("copyidcard_k"));
                bean.setCopydocumenthome_k(rs.getString("copydocumenthome_k"));
                bean.setSalary_slip_k(rs.getString("salary_slip_k"));
                bean.setCopy_bankaccount_k(rs.getString("copy_bankaccount_k"));
                
                bean.setCreateby(rs.getString("createby"));
                bean.setUpdateby(rs.getString("updateby"));
                bean.setCreated(rs.getString("created"));
                bean.setUpdated(rs.getString("updated"));
            }

        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        return bean;
    }

    public static void main(String[] args) throws Exception {
// //       ==================== ========================
        RequestLoanDao dao = new RequestLoanDao();
        RequestLoanBean bean = new RequestLoanBean();
        bean = dao.selectloanstatustype("รออนุมัติ");
        System.out.println(bean.getLoanreq_id());
        System.out.println(bean.getCitizen_id());

        System.out.println(bean.getFirstName());
        System.out.println(bean.getLastName());
        System.out.println(bean.getAge());
        System.out.println(bean.getEmail());
        System.out.println(bean.getLoanstatustype());

    }
//       =====================================================

    public RequestLoanBean selectBycitizenid(String citizen_id) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = null;
        con = dbConnect.openNewConnection();
        ResultSet rs = null;
        RequestLoanBean bean = null;
        String sql = "select * from tbl_user  where citizen_id = ?";
        PreparedStatement p = null;

        try {
            p = (PreparedStatement) con.prepareStatement(sql);
            p.setString(1, citizen_id);
            rs = p.executeQuery();
            while (rs.next()) {
                bean = new RequestLoanBean();
                bean.setLoanreq_id(rs.getInt("loanreq_id"));
                bean.setCitizen_id(rs.getString("citizen_id"));
                bean.setTitle_type(rs.getString("title_type"));
                bean.setFirstName(rs.getString("firstName"));
                bean.setLastName(rs.getString("lastName"));
                bean.setBirthdate(rs.getString("birthdate"));
                bean.setAge(rs.getInt("age"));
                bean.setStatustype(rs.getString("statustype"));
                bean.setMobile(rs.getString("mobile"));
                bean.setEmail(rs.getString("email"));
                bean.setNationality(rs.getString("nationality"));
                bean.setJobtype(rs.getString("jobtype"));
                bean.setProvince(rs.getString("province"));
                bean.setAmphur(rs.getString("amphur"));
                bean.setDistrict(rs.getString("district"));
                bean.setAddress(rs.getString("address"));
//                bean.setAddressregistration(rs.getString("addressregistration"));
//                bean.setAddresscurrent(rs.getString("addresscurrent"));
//                bean.setAddresssenddoc(rs.getString("addresssenddoc"));
                bean.setHometype(rs.getString("hometype"));
                bean.setTradingprice(rs.getDouble("tradingprice"));
                bean.setCreditloan(rs.getDouble("creditloan"));
                bean.setLncome_per_month(rs.getInt("lncome_per_month"));
                bean.setPeriodloan(rs.getDouble("periodloan"));
                bean.setNetprofit(rs.getDouble("netprofit"));
                bean.setCopyidcard(rs.getString("copyidcard"));
                bean.setCopylicenses(rs.getString("copylicenses"));
                bean.setCopydocumenthome(rs.getString("copydocumenthome"));
                bean.setCopymarriage(rs.getString("copymarriage"));
                bean.setCopy_rename(rs.getString("copy_rename"));
                bean.setSalary_slip(rs.getString("salary_slip"));
                bean.setCopy_bankaccount(rs.getString("copy_bankaccount"));
                bean.setLoanstatustype(rs.getString("loanstatustype"));
                
                      bean.setCitizen_p(rs.getString("citizen_p"));
                bean.setTitle_p(rs.getString("title_p"));
                bean.setFirstname_p(rs.getString("firstname_p"));
                bean.setLastname_p(rs.getString("lastname_p"));
                bean.setBirthdate_p(rs.getString("birthdate_p"));
                bean.setAge_p(rs.getInt("age_p"));
                bean.setStatustype_p(rs.getString("statustype_p"));
                bean.setMobile_p(rs.getString("mobile_p"));
                bean.setEmail_p(rs.getString("email_p"));
                bean.setNationality_p(rs.getString("nationality_p"));
                bean.setJobtype_p(rs.getString("jobtype_p"));
                bean.setProvince_p(rs.getString("province_p"));
                bean.setAmphur_p(rs.getString("amphur_p"));
                bean.setDistrict_p(rs.getString("district_p"));
                bean.setAddress_p(rs.getString("address_p"));
                bean.setPeriodloan_p(rs.getDouble("periodloan_p"));
                bean.setNetprofit_p(rs.getDouble("netprofit_p"));
                bean.setCopyidcard_p(rs.getString("copyidcard_p"));
                bean.setCopydocumenthome_p(rs.getString("copydocumenthome_p"));
                bean.setSalary_slip_p(rs.getString("salary_slip_p"));
                bean.setCopy_bankaccount_p(rs.getString("copy_bankaccount_p"));

                bean.setCitizen_k(rs.getString("citizen_k"));
                bean.setTitle_k(rs.getString("title_k"));
                bean.setFirstname_k(rs.getString("firstname_k"));
                bean.setLastname_k(rs.getString("lastname_k"));
                bean.setBirthdate_k(rs.getString("birthdate_k"));
                bean.setAge_k(rs.getInt("age_k"));
                bean.setStatustype_k(rs.getString("statustype_k"));
                bean.setMobile_k(rs.getString("mobile_k"));
                bean.setEmail_k(rs.getString("email_k"));
                bean.setNationality_k(rs.getString("nationality_k"));
                bean.setJobtype_k(rs.getString("jobtype_k"));
                bean.setProvince_k(rs.getString("province_k"));
                bean.setAmphur_k(rs.getString("amphur_k"));
                bean.setDistrict_k(rs.getString("district_k"));
                bean.setAddress_k(rs.getString("address_k"));
                bean.setPeriodloan_k(rs.getDouble("periodloan_k"));
                bean.setNetprofit_k(rs.getDouble("netprofit_k"));
                bean.setCopyidcard_k(rs.getString("copyidcard_k"));
                bean.setCopydocumenthome_k(rs.getString("copydocumenthome_k"));
                bean.setSalary_slip_k(rs.getString("salary_slip_k"));
                bean.setCopy_bankaccount_k(rs.getString("copy_bankaccount_k"));
                
                bean.setCreateby(rs.getString("createby"));
                bean.setUpdateby(rs.getString("updateby"));
                bean.setCreated(rs.getString("created"));
                bean.setUpdated(rs.getString("updated"));
            }

        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        return bean;
    }

    //       =====================================================
    public ArrayList<RequestLoanBean> selectAll() throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = null;
        con = dbConnect.openNewConnection();
        ResultSet rs = null;
        RequestLoanBean bean = null;
        String sql = "select * from tbl_requestloan where loanstatustype='รออนุมัติ'";
        PreparedStatement p = null;
        ArrayList<RequestLoanBean> loanList = new ArrayList<RequestLoanBean>();
        try {
            p = (PreparedStatement) con.prepareStatement(sql);

            rs = p.executeQuery();
            while (rs.next()) {
                bean = new RequestLoanBean();
                bean.setLoanreq_id(rs.getInt("loanreq_id"));
                bean.setCitizen_id(rs.getString("citizen_id"));
                bean.setTitle_type(rs.getString("title_type"));
                bean.setFirstName(rs.getString("firstName"));
                bean.setLastName(rs.getString("lastName"));
                bean.setBirthdate(rs.getString("birthdate"));
                bean.setAge(rs.getInt("age"));
                bean.setStatustype(rs.getString("statustype"));
                bean.setMobile(rs.getString("mobile"));
                bean.setEmail(rs.getString("email"));

                bean.setNationality(rs.getString("nationality"));
                bean.setJobtype(rs.getString("jobtype"));
                bean.setProvince(rs.getString("province"));
                bean.setAmphur(rs.getString("amphur"));
                bean.setDistrict(rs.getString("district"));
                bean.setAddress(rs.getString("address"));
//                bean.setAddressregistration(rs.getString("addressregistration"));
//                bean.setAddresscurrent(rs.getString("addresscurrent"));
//                bean.setAddresssenddoc(rs.getString("addresssenddoc"));
                bean.setHometype(rs.getString("hometype"));
                bean.setTradingprice(rs.getDouble("tradingprice"));
                bean.setCreditloan(rs.getDouble("creditloan"));
                bean.setLncome_per_month(rs.getInt("lncome_per_month"));
                bean.setPeriodloan(rs.getDouble("periodloan"));
                bean.setNetprofit(rs.getDouble("netprofit"));
                bean.setCopyidcard(rs.getString("copyidcard"));
                bean.setCopylicenses(rs.getString("copylicenses"));
                bean.setCopydocumenthome(rs.getString("copydocumenthome"));
                bean.setCopymarriage(rs.getString("copymarriage"));
                bean.setCopy_rename(rs.getString("copy_rename"));
                bean.setSalary_slip(rs.getString("salary_slip"));
                bean.setCopy_bankaccount(rs.getString("copy_bankaccount"));
                bean.setLoanstatustype(rs.getString("loanstatustype"));
                
                      bean.setCitizen_p(rs.getString("citizen_p"));
                bean.setTitle_p(rs.getString("title_p"));
                bean.setFirstname_p(rs.getString("firstname_p"));
                bean.setLastname_p(rs.getString("lastname_p"));
                bean.setBirthdate_p(rs.getString("birthdate_p"));
                bean.setAge_p(rs.getInt("age_p"));
                bean.setStatustype_p(rs.getString("statustype_p"));
                bean.setMobile_p(rs.getString("mobile_p"));
                bean.setEmail_p(rs.getString("email_p"));
                bean.setNationality_p(rs.getString("nationality_p"));
                bean.setJobtype_p(rs.getString("jobtype_p"));
                bean.setProvince_p(rs.getString("province_p"));
                bean.setAmphur_p(rs.getString("amphur_p"));
                bean.setDistrict_p(rs.getString("district_p"));
                bean.setAddress_p(rs.getString("address_p"));
                bean.setPeriodloan_p(rs.getDouble("periodloan_p"));
                bean.setNetprofit_p(rs.getDouble("netprofit_p"));
                bean.setCopyidcard_p(rs.getString("copyidcard_p"));
                bean.setCopydocumenthome_p(rs.getString("copydocumenthome_p"));
                bean.setSalary_slip_p(rs.getString("salary_slip_p"));
                bean.setCopy_bankaccount_p(rs.getString("copy_bankaccount_p"));

                bean.setCitizen_k(rs.getString("citizen_k"));
                bean.setTitle_k(rs.getString("title_k"));
                bean.setFirstname_k(rs.getString("firstname_k"));
                bean.setLastname_k(rs.getString("lastname_k"));
                bean.setBirthdate_k(rs.getString("birthdate_k"));
                bean.setAge_k(rs.getInt("age_k"));
                bean.setStatustype_k(rs.getString("statustype_k"));
                bean.setMobile_k(rs.getString("mobile_k"));
                bean.setEmail_k(rs.getString("email_k"));
                bean.setNationality_k(rs.getString("nationality_k"));
                bean.setJobtype_k(rs.getString("jobtype_k"));
                bean.setProvince_k(rs.getString("province_k"));
                bean.setAmphur_k(rs.getString("amphur_k"));
                bean.setDistrict_k(rs.getString("district_k"));
                bean.setAddress_k(rs.getString("address_k"));
                bean.setPeriodloan_k(rs.getDouble("periodloan_k"));
                bean.setNetprofit_k(rs.getDouble("netprofit_k"));
                bean.setCopyidcard_k(rs.getString("copyidcard_k"));
                bean.setCopydocumenthome_k(rs.getString("copydocumenthome_k"));
                bean.setSalary_slip_k(rs.getString("salary_slip_k"));
                bean.setCopy_bankaccount_k(rs.getString("copy_bankaccount_k"));
                
                bean.setCreateby(rs.getString("createby"));
                bean.setCreated(rs.getString("created"));
                bean.setUpdateby(rs.getString("updateby"));
                bean.setUpdated(rs.getString("updated"));

                loanList.add(bean);
            }

        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        return loanList;
    }

    public int updateById(RequestLoanBean requestLoatBean) throws Exception {
        DBConnect dbConnect = new DBConnect();
        Connection con = dbConnect.openNewConnection();
        String sql = "update tbl_requestloan set title_type=?, firstName=?, lastName=?, birthdate=?, age=?,  statustype=?, mobile=?, email=?,nationality=?,jobtype=?,province=?, amphur=?, district=?, address=?,  hometype=?, tradingprice=?, creditloan=?, lncome_per_month=?, periodloan=?, netprofit=?, copyidcard=?, copylicenses=?, copydocumenthome=?, copymarriage=?, copy_rename=?, salary_slip=?, copy_bankaccount=?, loanstatustype=?, updateby=?, updatedate=sysdate() where loanreq_id=? ";
        PreparedStatement p = null;
        int i = 0;
        try {
            p = (PreparedStatement) con.prepareStatement(sql.toString());

//            p.setString(1, requestLoatBean.getCitizen_id());
            p.setString(1, requestLoatBean.getTitle_type());
            p.setString(2, requestLoatBean.getFirstName());
            p.setString(3, requestLoatBean.getLastName());
            p.setString(4, requestLoatBean.getBirthdate());
            p.setInt(5, requestLoatBean.getAge());
            p.setString(6, requestLoatBean.getStatustype());
            p.setString(7, requestLoatBean.getMobile());
            p.setString(8, requestLoatBean.getEmail());
            p.setString(9, requestLoatBean.getNationality());
            p.setString(10, requestLoatBean.getJobtype());
            p.setString(11, requestLoatBean.getProvince());
            p.setString(12, requestLoatBean.getAmphur());
            p.setString(13, requestLoatBean.getDistrict());
            p.setString(14, requestLoatBean.getAddress());
//            p.setString(10, requestLoatBean.getAddressregistration());
//            p.setString(11, requestLoatBean.getAddresscurrent());
//            p.setString(12, requestLoatBean.getAddresssenddoc());
            p.setString(15, requestLoatBean.getHometype());
            p.setDouble(16, requestLoatBean.getTradingprice());
            p.setDouble(17, requestLoatBean.getCreditloan());
            p.setInt(18, requestLoatBean.getLncome_per_month());
            p.setDouble(19, requestLoatBean.getPeriodloan());
            p.setDouble(20, requestLoatBean.getNetprofit());
            p.setString(21, requestLoatBean.getCopyidcard());
            p.setString(22, requestLoatBean.getCopylicenses());
            p.setString(23, requestLoatBean.getCopydocumenthome());
            p.setString(24, requestLoatBean.getCopymarriage());
            p.setString(25, requestLoatBean.getCopy_rename());
            p.setString(26, requestLoatBean.getSalary_slip());
            p.setString(27, requestLoatBean.getCopy_bankaccount());
            p.setString(28, requestLoatBean.getLoanstatustype());
            p.setString(29, requestLoatBean.getFirstName());
            p.setInt(30, requestLoatBean.getLoanreq_id());
            i = p.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                p.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println(i);
        }
        return i;
    }

//    public static void main(String[] args) throws Exception {
//        RequestLoanDao dao = new RequestLoanDao();
//        RequestLoanBean bean = new RequestLoanBean();
//        int i = 0;
//        bean.setLoanreq_id(2);
////        bean.setCitizen_id("ดกก3453");
//        bean.setTitle_type("นาย");
//        bean.setFirstName("สุเมธ");
//        bean.setLastName("แก่นแก้ว");
//        bean.setBirthdate("10");
//        bean.setAge(50);
//        bean.setNationality("ไทย");
//        bean.setStatustype("cod");
//        bean.setMobile("0833412924");
//        bean.setEmail("sumet");
//        bean.setAddressregistration("rmu");
//        bean.setAddresscurrent("aaa");
//        bean.setAddresssenddoc("aaa");
//        bean.setJobtype("ss");
//        bean.setHometype("aaa");
//        bean.setTradingprice(23.23);
//        bean.setCreditloan(324.32);
//        bean.setLncome_per_month(1);
//        bean.setPeriodloan(53.65);
//        bean.setNetprofit(32.32);
//        bean.setCopyidcard("34.jpg");
//        bean.setCopylicenses("34.jpg");
//        bean.setCopydocumenthome("ก");
//        bean.setCopymarriage("fd");
//        bean.setCopy_rename("df");
//        bean.setSalary_slip("3sd");
//        bean.setCopy_bankaccount("sd");
//        bean.setLoanstatustype("รออนุมัติ");
////        bean.setFirstName("aa");
//
//        try {
//            i = dao.updateById(bean);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        System.out.println(i);
//
//    }
//    public void deleteByloanreqId(int loanreq_id)throws Exception{
//       DBConnect dbConnect = new DBConnect();
//        Connection con = null;
//        con = dbConnect.openNewConnection();
//        String sql = "delete from tbl_requestloan where loanreq_id";
//        PreparedStatement p = null;
//        try {
//            p= (PreparedStatement) con.prepareStatement(sql);
//            p.setInt(1, loanreq_id);
//            
//            p.executeUpdate();
//        }finally{
//            try {
//                p.close();
//                con.close();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }       
//        }    
//    }
    public int deleteloanreqId(int loanreq_id) throws Exception {
        DBConnect bConnect = new DBConnect();
        RequestLoanBean bean = new RequestLoanBean();
        Connection con = (Connection) bConnect.openNewConnection();
        String sql = "delete from tbl_requestloan where loanreq_id=?";
        PreparedStatement p = null;
        int i = 0;
        try {
            p = (PreparedStatement) con.prepareCall(sql.toString());
            p.setInt(1, loanreq_id);
            i = p.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                p.close();
                bConnect.closeConnection(con);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return i;
    }

//    public static void main(String[]arge)throws Exception{
//    RequestLoanDao dao = new RequestLoanDao();
//    RequestLoanBean bean= new RequestLoanBean();
//    int i=0;
//            try {
//                int loanreq_id=3;
//                i = dao.deleteloanreqId(loanreq_id);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//            System.out.println(i);
//    }
    public int deleteloanstatus(String loanstatustype) throws Exception {
        DBConnect bConnect = new DBConnect();
        RequestLoanBean bean = new RequestLoanBean();
        Connection con = (Connection) bConnect.openNewConnection();
        String sql = "delete from tbl_requestloan where loanstatustype=?";
        PreparedStatement p = null;
        int i = 0;
        try {
            p = (PreparedStatement) con.prepareCall(sql.toString());
            p.setString(1, loanstatustype);
            i = p.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                p.close();
                bConnect.closeConnection(con);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return i;
    }
}
