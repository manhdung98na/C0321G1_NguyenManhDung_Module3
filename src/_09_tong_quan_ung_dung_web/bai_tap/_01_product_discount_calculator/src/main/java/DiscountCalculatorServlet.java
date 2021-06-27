import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountCalculatorServlet", value = "/calculate")
public class DiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float giaNiemYet = Float.parseFloat(request.getParameter("list-price"));
        float tyLeChietKhau = Float.parseFloat(request.getParameter("discount-percent"))/100;
        float luongChietKhau = giaNiemYet * tyLeChietKhau;
        float giaSauKhiChietKhau = giaNiemYet - luongChietKhau;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("Discount Amount = " + luongChietKhau + "<br>");
        writer.println("Discount Price = " + giaSauKhiChietKhau + "<br>");
        writer.println("</html>");
    }
}
