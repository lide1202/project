package com.lee.portal.po;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

import com.lee.po.BasePO;

@Alias("UserPO")
public class UserPO extends BasePO implements Serializable{

	private static final long serialVersionUID = 1L;
    private String uid;
    private String loginname;
    private String loginpass;
    private String email;
    private Boolean status;
    private String activationcode;
    public String getUid() {
        return uid;
    }
    public void setUid(String uid) {
        this.uid = uid;
    }
    public String getLoginname() {
        return loginname;
    }
    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }
    public String getLoginpass() {
        return loginpass;
    }
    public void setLoginpass(String loginpass) {
        this.loginpass = loginpass;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public Boolean getStatus() {
        return status;
    }
    public void setStatus(Boolean status) {
        this.status = status;
    }
    public String getActivationcode() {
        return activationcode;
    }
    public void setActivationcode(String activationcode) {
        this.activationcode = activationcode;
    }
}