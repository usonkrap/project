package util;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.ArrayList;

import javax.imageio.ImageIO;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.vision.v1.Vision;
import com.google.api.services.vision.v1.VisionRequestInitializer;
import com.google.api.services.vision.v1.VisionScopes;
import com.google.api.services.vision.v1.model.AnnotateImageRequest;
import com.google.api.services.vision.v1.model.AnnotateImageResponse;
import com.google.api.services.vision.v1.model.BatchAnnotateImagesRequest;
import com.google.api.services.vision.v1.model.BatchAnnotateImagesResponse;
import com.google.api.services.vision.v1.model.EntityAnnotation;
import com.google.api.services.vision.v1.model.Feature;
import com.google.api.services.vision.v1.model.Image;


public class GoogleDetection  {

	 String imagePath;
	
	public GoogleDetection(String imagePath) {
		this.imagePath = imagePath; 
   
   }
	
	
    public BatchAnnotateImagesResponse detect() {

        Vision vision = null;
		try {
			vision = getVisionService();
		} catch (IOException | GeneralSecurityException e1) {
			e1.printStackTrace();
		} 

        BatchAnnotateImagesRequest batchAnnotateImagesRequest = new BatchAnnotateImagesRequest();
        batchAnnotateImagesRequest.setRequests(new ArrayList<AnnotateImageRequest>() {{
            AnnotateImageRequest annotateImageRequest = new AnnotateImageRequest();
            setImage(annotateImageRequest, imagePath);
            setFeaturesForOCR(annotateImageRequest);

            add(annotateImageRequest);
            
        }});

        Vision.Images.Annotate annotateRequest;
        BatchAnnotateImagesResponse response = null;
        try {
            annotateRequest = vision.images().annotate(batchAnnotateImagesRequest);
            // Due to a bug: requests to Vision API containing large images fail when GZipped.
            annotateRequest.setDisableGZipContent(true);

            response = annotateRequest.execute();
              
        } catch (IOException e) {
            e.printStackTrace();
        }
       

        return response;
    }

	public Vision getVisionService() throws IOException, GeneralSecurityException {
        GoogleCredential credential =
            GoogleCredential.getApplicationDefault().createScoped(VisionScopes.all());
        
        
        JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
        return new Vision.Builder(GoogleNetHttpTransport.newTrustedTransport(), jsonFactory, credential)
        		.setApplicationName("ses")
        		.build();
      }
    
    private byte[] getBytesFromImage(String imagePath) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        BufferedImage img = ImageIO.read(new File(imagePath));
        ImageIO.write(img, "jpg", baos);
        baos.flush();
        byte[] imageInByte = baos.toByteArray();
        baos.close();
        return imageInByte;
    }

    private void setImage(AnnotateImageRequest annotateImageRequest, String imagePath) {
        Image base64EncodedImage = new Image();
        try {
            base64EncodedImage.encodeContent(getBytesFromImage(imagePath));
        } catch (IOException e) {
            e.printStackTrace();
        }
        annotateImageRequest.setImage(base64EncodedImage);
    }

    /*private void setFeaturesForLabelDetection(AnnotateImageRequest annotateImageRequest) {
        annotateImageRequest.setFeatures(new ArrayList<Feature>() {{
            Feature labelDetection = new Feature();
            labelDetection.setType("LABEL_DETECTION");
            add(labelDetection);
        }});
    }*/

    private void setFeaturesForOCR(AnnotateImageRequest annotateImageRequest) {
        annotateImageRequest.setFeatures(new ArrayList<Feature>() {{
            Feature textDetection = new Feature();
            textDetection.setType("TEXT_DETECTION");
            add(textDetection);
        }});
    }

  

    private String convertResultToString(BatchAnnotateImagesResponse response) {
    	
        StringBuilder sb = new StringBuilder();

        ArrayList<AnnotateImageResponse> result;
        result = (ArrayList<AnnotateImageResponse>) response.getResponses();

        for (AnnotateImageResponse r : result) {
            for (EntityAnnotation text : r.getTextAnnotations()) {
                sb.append(text.getDescription());
            }
        }
        
        System.out.println("좌표: \n" + response.toString());
        
        return sb.toString();
    }

}

