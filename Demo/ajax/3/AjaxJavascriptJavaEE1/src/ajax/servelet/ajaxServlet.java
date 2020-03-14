package ajax.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */

public class ajaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //������������,��requestȡ����,ͨ��˵���Ǵ������ȡ����
        String name = request.getParameter("textValue");
        System.out.println("��ӭ:"+name);
        PrintWriter out = response.getWriter();//���ص���PrintWriter������һ����ӡ�������
        out.print("["+name+"]  the message has been received[this is Ajax]");//�������Դ�ӡ����ı���ʽ�ģ�����html��ǩ���������Խ�һ��������Ĭ�ϵı��뷽ʽת��Ϊ�������ֽ����
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}