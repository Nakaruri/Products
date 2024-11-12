package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.LoginLogic;
import model.User;

@WebServlet("/Login") //p93 URLパターン
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L; //構文
    
	protected void doPost(HttpServletRequest request, //p136 POSTリクエスト 情報の登録
		HttpServletResponse response) 
		throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//p140 リクエストパラメータの文字コードを指定
		String id = request.getParameter("id");// リクエストパラメータの取得
		String pass = request.getParameter("pass");
		//Userインスタンス(ユーザー情報)の生成
		User user = new User(id, pass);
		//ログイン処理
		LoginLogic loginLogic = new LoginLogic();
		boolean isLogin = loginLogic.execute(user);
		
		//ログイン成功時の処理
		if(isLogin) {
			//ユーザー情報をセッションスコープに保存
			HttpSession session = request.getSession();
			session.setAttribute("loginUser",user);
		}
		//ログイン結果画面にフォワード
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(
						"WEB-INF/jsp/loginResult.jsp");
		dispatcher.forward(request, response);
		}

}
