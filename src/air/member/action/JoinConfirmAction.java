package air.member.action;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Jdbc.Connection.ConnectionProvider;
import air.page.action.Action;
import air.page.action.ActionForward;
import dao.MemberDAO;
import dto.memberDTO;

public class JoinConfirmAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//�ѱ�ó��
    	request.setCharacterEncoding("UTF-8");
    	
    	//id�� ���޹ޱ�
//    	String member_id = request.getParameter("member_id");
    	String member_id = (String)request.getAttribute("member_id");
    	System.out.println("member_id:"+member_id);
    	
    	//DB�۾� DAO��ü ����
    	MemberDAO mdao = new MemberDAO();
    	try(Connection conn = ConnectionProvider.getConnection()){
    	// ��������(����,�̸�)�� ������ �޼ҵ� 
        memberDTO mdto = mdao.joinConfirm(conn, member_id);
        
        /* request���� ��� */
        // ����,���̵� �����ϰ��ִ� memberDTO��ü�� request������ ���
        request.setAttribute("mdto", mdto);
//        System.out.println(mdto.getMember_id());
//        System.out.println(mdto.getMember_kor());
    	}
        /* View�� ���� */
        // Join_03.jsp�������� �̵��ϸ鼭 request���� ����
/*        RequestDispatcher dis = request.getRequestDispatcher("./Join_03.jsp");
        dis.forward(request, response);
    */	
    	String wrapClass="member";
    	
    	request.setAttribute("wrap", wrapClass);
    	
    	ActionForward forward = new ActionForward();
    	forward.setRedirect(false);
    	forward.setPath("./Main_Index.jsp?page=member/Join_03.jsp");
    	
		return forward;
	}

}
