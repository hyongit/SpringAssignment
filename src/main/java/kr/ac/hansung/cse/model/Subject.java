package kr.ac.hansung.cse.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Subject {
	
	private int year;
	private int semester;
	
	@Size(min=7, max=7, message="유효한 교과코드가 아닙니다")
	private String subcode;
	
	@NotEmpty(message="과목명을 입력해주세요")
	private String subname;
	
	@Size(min=2, max=2, message="교과구분을 두 글자로 입력해주세요")
	private String classify;
	
	@Size(min=1, max=50, message="이름은 50글자까지 입력 가능합니다")
	private String professor;
	
	private int credits;
		
	
}
