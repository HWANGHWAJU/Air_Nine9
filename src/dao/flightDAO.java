package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.flightschedule;

public class flightDAO {

	PreparedStatement pstmt;
	ResultSet rs;

	public Vector<flightschedule> getFlightScheduleList(Connection conn, String flightschedule_dep, String flightschedule_arr, String startDate) {

		Vector<flightschedule> v = new Vector<flightschedule>();

		flightschedule ttable = null;

		try {

			String sql = 
					" select t.flightschedule_number, t.plane_seat_flight_name, t.flightschedule_dep_time, t.flightschedule_arr_time,r.route_baseprice,t .flightschedule_dep, t.flightschedule_arr,t.flightschedule_op_startdate, t.flightschedule_op_enddate"
					+ " from flightschedule t inner join route r" + " on t.route_number = r.route_number"
					+ " where t.flightschedule_dep=? and t.flightschedule_arr=?  and t.flightschedule_op_startdate <= ? and t.flightschedule_op_enddate >= ?"
					+ " order by t.flightschedule_dep_time asc";
		
			pstmt = conn.prepareStatement(sql);


			pstmt.setString(1, flightschedule_dep);
			pstmt.setString(2, flightschedule_arr);
			pstmt.setString(3, startDate);
			pstmt.setString(4, startDate);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {

				ttable = new flightschedule();
				
				ttable.setFlightschedule_number(rs.getInt(1));
				ttable.setPlane_seat_flight_name(rs.getString(2));// �װ����
				ttable.setFlightschedule_dep_time(rs.getTime(3));// ��߽ð�
				ttable.setFlightschedule_arr_time(rs.getTime(4));// �����ð�
				ttable.setRoute_baseprice(rs.getInt(5));// �⺻���
				ttable.setFlightschedule_dep(rs.getString(6)); // �����
				ttable.setFlightschedule_arr(rs.getString(7));// ������
				ttable.setFlightschedule_op_startdate(rs.getDate(8));
				ttable.setFlightschedule_op_enddate(rs.getDate(9));
				
				ttable.setSale_price(getSalePrice(rs.getTime(3), rs.getInt(5)));
				System.out.println(ttable.getSale_price());
				v.add(ttable);
			}

		} catch (Exception e) {
			System.out.println("getFlightScheduleList 에서 오류: " + e);
		} finally {
		
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return v;
	}
	
	@SuppressWarnings("deprecation")
	public int getSalePrice(Time t, int base){
		double price = base;
		int depTime = t.getHours();
		
		if(depTime >= 20){
			price = base*0.7;
		}else if(depTime <= 7){
			price = base*0.8;
		}
		return (int)price;
	}


	public Vector<flightschedule> getFlightScheduleRound(Connection conn, String flightschedule_arr, String flightschedule_dep, String endDate) {

		Vector<flightschedule> vec = new Vector<flightschedule>();

		flightschedule ttable = null;

		try {
			String sql = "select t.flightschedule_number, t.plane_seat_flight_name,t.flightschedule_dep_time,t.flightschedule_arr_time,r.route_baseprice,t.flightschedule_dep,t.flightschedule_arr, t.flightschedule_op_startdate, t.flightschedule_op_enddate"
					+ " from flightschedule t join route r" + " on t.route_number = r.route_number"
					+ " where t.flightschedule_dep=? and t.flightschedule_arr=?  and t.flightschedule_op_startdate <= ? and t.flightschedule_op_enddate >= ?"
					+ " order by t.flightschedule_dep_time asc";

			pstmt = conn.prepareStatement(sql);

			// ��� ���� �� ����
			pstmt.setString(1, flightschedule_arr);
			pstmt.setString(2, flightschedule_dep);
			pstmt.setString(3, endDate);
			pstmt.setString(4, endDate);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {

				ttable = new flightschedule();
				
				ttable.setFlightschedule_number(rs.getInt(1));
				ttable.setPlane_seat_flight_name(rs.getString(2));// �װ����
				ttable.setFlightschedule_dep_time(rs.getTime(3));// ��߽ð�
				ttable.setFlightschedule_arr_time(rs.getTime(4));// �����ð�
				ttable.setRoute_baseprice(rs.getInt(5));// �⺻���
				ttable.setFlightschedule_dep(rs.getString(6)); // �����
				ttable.setFlightschedule_arr(rs.getString(7));// ������
				ttable.setFlightschedule_op_startdate(rs.getDate(8));
				ttable.setFlightschedule_op_enddate(rs.getDate(9));
				
				ttable.setSale_price(getSalePrice(rs.getTime(3), rs.getInt(5)));
				System.out.println(ttable.getSale_price());
				
				vec.add(ttable);
			}

		} catch (Exception e) {
			System.out.println("getFlightScheduleList 에서 오류: " + e);
		} finally {
	
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return vec;
	}
}

	
	


