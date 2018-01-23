package controller;

import com.google.gson.Gson;
import model.ChartModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AjaxServlet", urlPatterns = {"/AjaxServlet"})
public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aaaaaaaparam1: " + request.getParameter("param1"));
        List<ChartModel> temp = new ArrayList<>();
        temp.add(new ChartModel("8","6","2014-03-01 08"));
        temp.add(new ChartModel("11","3","2014-03-01 09"));
        temp.add(new ChartModel("7","9","2014-03-01 10"));
        String json = new Gson().toJson(temp);
        request.setAttribute("list", temp);
        response.getWriter().write(json);
    }
}
