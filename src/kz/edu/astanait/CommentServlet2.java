package kz.edu.astanait;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CommentServlet2")
public class CommentServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Comments com= addComment(request, response);
        request.setAttribute("com",com);
        request.getRequestDispatcher("/WEB-INF/YourComment.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    private Comments addComment(HttpServletRequest request, HttpServletResponse response){
        Comments comment= new Comments();
        String commentId="1";
        comment.setCommentId(commentId);
        comment.setName(request.getParameter("Name"));
        comment.setAge(request.getParameter("age"));
        comment.setComment(request.getParameter("comment"));

        return comment;
    }
}
