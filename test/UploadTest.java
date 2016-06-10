import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PartETag;

public class UploadTest {

	private static final String bucketName = "cloud-group4-testbucket";
	private static List<PartETag> partETags = new ArrayList<PartETag>();

	
	/**
	 * Returns a S3 connection object
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
	 * File to be uploaded to S3 bucket
	 * 
	 * @param file
	 */
	
	public static void uploadFile(File file) {
		String keyName = file.getName();
		InitiateMultipartUploadRequest initRequest = new InitiateMultipartUploadRequest(bucketName, keyName);
		InitiateMultipartUploadResult initResponse = getClientObject().initiateMultipartUpload(initRequest);

		long contentLength = file.length();
		long partSize = 5 * 1024 * 1024;

		try {
			long filePosition = 0;
			for (int i = 1; filePosition < contentLength; i++) {
				partSize = Math.min(partSize, (contentLength - filePosition));
				UploadPartRequest uploadPartRequest = new UploadPartRequest().withBucketName(bucketName)
						.withKey(keyName).withUploadId(initResponse.getUploadId()).withPartNumber(i)
						.withFileOffset(filePosition).withFile(file).withPartSize(partSize);

				partETags.add(getClientObject().uploadPart(uploadPartRequest).getPartETag());
				filePosition += partSize;
			}

			CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(
					bucketName, keyName, initResponse.getUploadId(), partETags);
			getClientObject().completeMultipartUpload(completeMultipartUploadRequest);
		} catch (Exception e) {

			getClientObject().abortMultipartUpload(
					new AbortMultipartUploadRequest(bucketName, keyName, initResponse.getUploadId()));
		}

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Please provide the path of the file");
		Scanner s = new Scanner(System.in);
		String path = s.next();

		// create a new File object
		File file = new File(path);

		uploadFile(file);
	}

}
