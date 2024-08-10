/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.categoryDAO;
import dao.courseDAO;
import dao.feedbackDAO;
import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import model.Category;
import model.Course;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CourseList", urlPatterns = {"/CourseList"})
public class CourseList extends HttpServlet {

    int itemPerPage = 6;

    private boolean isCheck(int d, int[] id) {
        if (id == null) {
            return false;
        } else {
            for (int i = 0; i < id.length; i++) {
                if (id[i] == d) {
                    return true;
                }
            }
            return false;
        }
    }

    public ArrayList<Course> sort(String opt, ArrayList<Course> list) {

        switch (opt) {
            case "Most_popular":
                Collections.sort(list, new Comparator<Course>() {
                    @Override
                    public int compare(Course o1, Course o2) {
                        if (o1.getPrice() > o2.getPrice()) {
                            return 1;
                        } else {
                            return -1;
                        }
                    }
                ;
                });
                break;
            case "average_rating":
                Collections.sort(list, new Comparator<Course>() {
                    @Override
                    public int compare(Course o1, Course o2) {
                        return (int) (o2.getPrice() - o1.getPrice());
                    }
                ;
                });
                break;
            case "latest":
                Collections.sort(list, new Comparator<Course>() {
                    @Override
                    public int compare(Course o1, Course o2) {
                        return o1.getName().compareTo(o2.getName());
                    }
                ;
                });
                break;
            case "default":
                return list;
            default:
                return list;
        }
        return list;
    }

    public static ArrayList<Course> paginateCourses(ArrayList<Course> listCourse, int currentPage, int pageSize) {
        int startIndex = pageSize * (currentPage - 1);
        int endIndex = Math.min(startIndex + pageSize, listCourse.size());

        // Kiểm tra nếu chỉ số bắt đầu hợp lệ
        if (startIndex >= listCourse.size() || startIndex < 0) {
            return new ArrayList<>(); // Trả về danh sách trống nếu trang không hợp lệ
        }

        // Trích xuất phần danh sách con theo trang
        return new ArrayList<>(listCourse.subList(startIndex, endIndex));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String search = request.getParameter("search");
        if (search == null) {
            search = "";
        }
        String mess = null;
        categoryDAO categoryDAO = new categoryDAO();
        courseDAO courseDAO = new courseDAO();
        userDAO userDAO = new userDAO();
        feedbackDAO rateDAO = new feedbackDAO();
        String cid_raw = request.getParameter("cid");
        String[] cidd_raw = request.getParameterValues("cidd");
        ArrayList<Category> listCategory = categoryDAO.getAllCategory();
        ArrayList<Course> listCourse = courseDAO.getAllCourse(search, "[created_date]");
        int cid = 0;
        if (cid_raw != null) {
            cid = Integer.parseInt(cid_raw);
            listCourse = courseDAO.getAllCourseByCid(search, cid);
        }
        boolean[] chid = new boolean[listCategory.size() + 1];
        int[] cidd = null;
        if (cid_raw != null) {
            cid = Integer.parseInt(cid_raw);
            listCourse = courseDAO.getAllCourseByCid(search, cid);
            if (cid == 0) {
                chid[0] = true;
            }
        }
        if (cidd_raw != null) {
            cidd = new int[cidd_raw.length];
            for (int i = 0; i < cidd.length; i++) {
                cidd[i] = Integer.parseInt(cidd_raw[i]);
            }
            listCourse = courseDAO.getListCourseByCids(search, cidd);
        }
        //

        //
        if (cid_raw == null) {
            chid[0] = true;
        }
        if ((cidd_raw != null) && (cidd[0] != 0)) {
            chid[0] = false;
            for (int i = 1; i < chid.length; i++) {
                if (isCheck(listCategory.get(i - 1).getId(), cidd)) {
                    chid[i] = true;
                } else {
                    chid[i] = false;
                }
            }
        }
        String sort;

        sort = request.getParameter("sort") != null ? request.getParameter("sort") : "default";
        // Paging
        String paging_raw = request.getParameter("page");
        String tab = request.getParameter("tab") != null ? request.getParameter("tab") : "1";
        int currentPage = 1;
        if (paging_raw != null) {
            try {
                currentPage = Integer.parseInt(paging_raw);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        int totalPages = 0;
        totalPages = (int) Math.ceil((double) listCourse.size() / itemPerPage);
        if (listCourse.size() == 0) {
            mess = "Not found!";
        } else {
            for (Course course : listCourse) {
                course.setCategory_name(categoryDAO.getNameCategory(course.getCategory_id()));
                course.setAssign_name(userDAO.findUserName(course.getAssign_by()));
                course.setRating(rateDAO.getAverageRateOf(course.getId()));
                course.setCount(userDAO.StudentOnCourse(course.getId()));
            }
        }

        listCourse = sort(sort, listCourse);
        ArrayList<Course> listPage = null;
        listPage = paginateCourses(listCourse,currentPage,itemPerPage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("tab", tab);
        request.setAttribute("chid", chid);
        request.setAttribute("cid", cid);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("mess", mess);
        request.setAttribute("categories", listCategory);
        request.setAttribute("courses", listPage);
        request.setAttribute("sort", sort);
        request.getRequestDispatcher("courselist.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
