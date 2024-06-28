package util;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class uploadCloudinry {

    public uploadCloudinry() {
    }

    //Edit
    public String uploadCloudMultiImages(HttpServletRequest request, String[] imageExist) throws IOException, ServletException {
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "doq5nrr4z",
                "api_key", "499616597969877",
                "api_secret", "AfMM5G2bn-p-RSWxpqVb-Sd8_d4",
                "secure", true));
        
        List<Part> fileParts = request.getParts().stream()
                .filter(part -> "images".equals(part.getName())) // Lọc các Part có tên là "images"
                .collect(Collectors.toList());
        List<String> imageUrls = new ArrayList<>();
        System.out.println(fileParts.size());
        if (fileParts.size() >= 1) {
            for (Part filePart : fileParts) {
                if (filePart.getSize() > 0) {
                    Map uploadResult = cloudinary.uploader().upload(filePart.getInputStream().readAllBytes(),
                            ObjectUtils.asMap("resource_type", "image"));
                    String imageUrl = (String) uploadResult.get("url");
                    System.out.println(imageUrl);
                    imageUrls.add(imageUrl);
                }
            }

            for (String i : imageExist) {
                imageUrls.add(i);
            }
            // Convert Map to JSON using Gson
            Gson gson = new Gson();

            String jsonResult = gson.toJson(imageUrls);
            return jsonResult;
        } else {
            return null;
        }

    }

    public String uploadCloudSingleImage(HttpServletRequest request, String name) throws IOException, ServletException {
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                "cloud_name", "doq5nrr4z",
                "api_key", "499616597969877",
                "api_secret", "AfMM5G2bn-p-RSWxpqVb-Sd8_d4",
                "secure", true));
        //add single image
        Part filePart = request.getPart(name);
        if (filePart != null && filePart.getSize() != 0) {
            Map uploadResult = cloudinary.uploader().upload(filePart.getInputStream().readAllBytes(),
                    ObjectUtils.asMap("resource_type", "image"));
            String imageUrl = (String) uploadResult.get("url");
            return imageUrl;
        } else {
            return null;
        }

    }
}
