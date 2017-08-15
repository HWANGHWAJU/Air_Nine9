package dto;

import java.sql.Date;
import java.sql.Time;

public class flightschedule {

	
	//Ÿ�����̺�
	private int flightschedule_number; 
	private int route_number;		
	private String plane_seat_flight_name;	
	private String flightschedule_dep;		
	private Time flightschedule_dep_time;	
	private String flightschedule_arr;		
	private Time flightschedule_arr_time;	
	private String flightschedule_op_day;	
	private Date flightschedule_op_startdate;	
	private Date flightschedule_op_enddate;	
	private String flightschedule_line;

	
	
	//��Ʈ���̺� (����ִ� ���̺�)
//	private int route_number;	
	private String route_line;
	private String route_dep;
	private String route_arr;
	private int route_baseprice;
	private int sale_price;
	
	public int getSale_price(){
		return sale_price;
	}
	
	public void setSale_price(int p){
		this.sale_price = p;
	}
	
	public int getFlightschedule_number() {
		return flightschedule_number;
	}
	public void setFlightschedule_number(int flightschedule_number) {
		this.flightschedule_number = flightschedule_number;
	}
	public int getRoute_number() {
		return route_number;
	}
	public void setRoute_number(int route_number) {
		this.route_number = route_number;
	}
	public String getPlane_seat_flight_name() {
		return plane_seat_flight_name;
	}
	public void setPlane_seat_flight_name(String plane_seat_flight_name) {
		this.plane_seat_flight_name = plane_seat_flight_name;
	}
	public String getFlightschedule_dep() {
		return flightschedule_dep;
	}
	public void setFlightschedule_dep(String flightschedule_dep) {
		this.flightschedule_dep = flightschedule_dep;
	}
	public Time getFlightschedule_dep_time() {
		return flightschedule_dep_time;
	}
	public void setFlightschedule_dep_time(Time flightschedule_dep_time) {
		this.flightschedule_dep_time = flightschedule_dep_time;
	}
	public String getFlightschedule_arr() {
		return flightschedule_arr;
	}
	public void setFlightschedule_arr(String flightschedule_arr) {
		this.flightschedule_arr = flightschedule_arr;
	}
	public Time getFlightschedule_arr_time() {
		return flightschedule_arr_time;
	}
	public void setFlightschedule_arr_time(Time flightschedule_arr_time) {
		this.flightschedule_arr_time = flightschedule_arr_time;
	}
	public String getFlightschedule_op_day() {
		return flightschedule_op_day;
	}
	public void setFlightschedule_op_day(String flightschedule_op_day) {
		this.flightschedule_op_day = flightschedule_op_day;
	}
	public Date getFlightschedule_op_startdate() {
		return flightschedule_op_startdate;
	}
	public void setFlightschedule_op_startdate(Date flightschedule_op_startdate) {
		this.flightschedule_op_startdate = flightschedule_op_startdate;
	}
	public Date getFlightschedule_op_enddate() {
		return flightschedule_op_enddate;
	}
	public void setFlightschedule_op_enddate(Date flightschedule_op_enddate) {
		this.flightschedule_op_enddate = flightschedule_op_enddate;
	}
	public String getFlightschedule_line() {
		return flightschedule_line;
	}
	public void setFlightschedule_line(String flightschedule_line) {
		this.flightschedule_line = flightschedule_line;
	}
	public String getRoute_line() {
		return route_line;
	}
	public void setRoute_line(String route_line) {
		this.route_line = route_line;
	}
	public String getRoute_dep() {
		return route_dep;
	}
	public void setRoute_dep(String route_dep) {
		this.route_dep = route_dep;
	}
	public String getRoute_arr() {
		return route_arr;
	}
	public void setRoute_arr(String route_arr) {
		this.route_arr = route_arr;
	}
	public int getRoute_baseprice() {
		return route_baseprice;
	}
	public void setRoute_baseprice(int route_baseprice) {
		this.route_baseprice = route_baseprice;
	}
	

	
	
	
	
	
}
