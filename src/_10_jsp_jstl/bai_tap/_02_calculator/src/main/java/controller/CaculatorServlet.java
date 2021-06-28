package controller;

import model.Calculator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

@WebServlet( name = "CaculatorServlet", urlPatterns = "/calculate")
public class CaculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(req.getParameter("first-operand"));
        float secondOperand = Float.parseFloat(req.getParameter("second-operand"));
        char operator = req.getParameter("operator").charAt(0);
        DecimalFormat f = new DecimalFormat(".###");
        try {
            float result = Calculator.calculate(firstOperand, secondOperand, operator);
            req.setAttribute("result", f.format(result));
            req.setAttribute("firstOperand", f.format(firstOperand));
            req.setAttribute("secondOperand", f.format(secondOperand));
            req.setAttribute("operator", operator);
        }catch (Exception e){
            req.setAttribute("errorMessage", e.getMessage());
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
