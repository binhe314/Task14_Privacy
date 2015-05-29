package form;

import org.mybeans.form.FileProperty;
import org.mybeans.form.FormBean;

public class uploadForm extends FormBean {

	private FileProperty file = null;
	public FileProperty getFile()           { return file;           }
	public void setFile(FileProperty file)  { this.file   = file;     }
	
}
