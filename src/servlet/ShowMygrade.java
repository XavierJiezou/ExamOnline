package servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;

import servlet.StudentInterfaceBiz;
import servlet.StudentInterfaceImplBiz;


public class ShowMygrade extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ShowMygrade() {
        super();

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	StudentInterfaceBiz sid=new StudentInterfaceImplBiz();
    	String stu=(String)((Student)request.getSession().getAttribute("Student")).getId();
    	System.out.println(stu);
    	//String stu="fang";
    	try {
    		//后期加上request.getparameter("username")即可
			request.getSession().setAttribute("mygradelist", sid.stucj(stu));
		} catch (SQLException e) {
			e.printStackTrace();
		}
    			//将list数据发送到.jsp文件中
		//request.getRequestDispatcher("student/studentResult.jsp").forward(request, response);
		//重定向
		response.sendRedirect("Student/studentResult.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

