package in.nit.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "docstab")
public class Document {
	
	@Id
	@Column(name = "fid")
	private Integer fileId;
	@Column(name = "fname")
	private String fileName;
	@Lob
	@Column(name = "fdata")
	private byte[] filData;
	public Document() {
		super();
	}
	
	public Integer getFileId() {
		return fileId;
	}

	
	public void setFileId(Integer fileId) {
		this.fileId = fileId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public byte[] getFilData() {
		return filData;
	}

	public void setFilData(byte[] filData) {
		this.filData = filData;
	}

	@Override
	public String toString() {
		return "Document [fileId=" + fileId + ", fileName=" + fileName + ", filData=" + Arrays.toString(filData) + "]";
	}
	
	
		
	
	
	

}
