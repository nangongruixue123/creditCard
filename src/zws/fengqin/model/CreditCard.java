package zws.fengqin.model;

import java.util.Date;

public class CreditCard {
	
	private int id;
	private String kazhu;
	private String fakahang;
	private int kawei;
	private String zhangdan;
	private double huankuan;
	private double shengyu;
	private Date time;
	private double money;
	private double yihuan;
	private double weihuan;
	private int hezhang;

	public String getFakahang() {
		return fakahang;
	}
	public void setFakahang(String fakahang) {
		this.fakahang = fakahang;
	}
	public int getKawei() {
		return kawei;
	}
	public void setKawei(int kawei) {
		this.kawei = kawei;
	}

	public double getHuankuan() {
		return huankuan;
	}
	public void setHuankuan(double huankuan) {
		this.huankuan = huankuan;
	}
	public double getShengyu() {
		return shengyu;
	}
	public void setShengyu(double shengyu) {
		this.shengyu = shengyu;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public double getYihuan() {
		return yihuan;
	}
	public void setYihuan(double yihuan) {
		this.yihuan = yihuan;
	}
	public double getWeihuan() {
		return weihuan;
	}
	public void setWeihuan(double weihuan) {
		this.weihuan = weihuan;
	}
	public int getHezhang() {
		return hezhang;
	}
	public void setHezhang(int hezhang) {
		this.hezhang = hezhang;
	}
	public String getZhangdan() {
		return zhangdan;
	}
	public void setZhangdan(String zhangdan) {
		this.zhangdan = zhangdan;
	}
	public String getKazhu() {
		return kazhu;
	}
	public void setKazhu(String kazhu) {
		this.kazhu = kazhu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public CreditCard(int id, String kazhu, String fakahang, int kawei, String zhangdan, double huankuan,
			double shengyu, Date time, double money, double yihuan, double weihuan, int hezhang) {
		this.id = id;
		this.kazhu = kazhu;
		this.fakahang = fakahang;
		this.kawei = kawei;
		this.zhangdan = zhangdan;
		this.huankuan = huankuan;
		this.shengyu = shengyu;
		this.time = time;
		this.money = money;
		this.yihuan = yihuan;
		this.weihuan = weihuan;
		this.hezhang = hezhang;
	}
	public CreditCard() {
	}
	
}
