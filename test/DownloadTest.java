import java.io.File;
import java.io.FileOutputStream;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.util.IOUtils;

public class DownloadTest {

	private static final String bucketName = "cloud-group4-testbucket";
	private static final String downloadPath = "C:\\Users\\Loukik\\AWS_DWN\\";
	private static final String filename = "Invoice_69846191.pdf";

	/**
	 * Returns a AmazonS3Client object for communication
	 * 
	 * @return
	 */
	public static AmazonS3Client getClientObject() {

		AmazonS3Client s3Client = new AmazonS3Client(new AWSCredentials() {

			public String getAWSSecretKey() {
				// TODO Auto-generated method stub
				return "Ue7iQYzHT4i4kxa7kdwNtpqgZWUELBep6rQFqhV2";
			}

			public String getAWSAccessKeyId() {
				// TODO Auto-generated method stub
				return "AKIAJE46VYJNUVNS7BQQ";
			}
		});

		return s3Client;

	}

	/**
	 * Code to download and save file on local system
	 * 
	 * @param filename Name of the file
	 */
	private static void downloadFile(String filename) {

		S3Object obj = getClientObject().getObject(new GetObjectRequest(bucketName, filename));
		try {

		S3ObjectInputStream content = obj.getObjectContent();
		IOUtils.copy(content, new FileOutputStream(downloadPath+obj.getKey()));
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		downloadFile("Invoice_69846191.pdf");

	}

}
