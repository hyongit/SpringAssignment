package kr.ac.hansung.cse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.cse.model.Subject;

@Repository("subjectDao")
public class SubjectDao {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    public int getRowCount() {
    	String sqlStatement = "select count(*) from subjects";
    	return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
    }
    
    // cRud method
    // query and return a single object
    public Subject getSubject(String name) {
    	String sqlStatement="select * from subjects where name=? ORDER BY 수강년도";
    	return jdbcTemplate.queryForObject(sqlStatement, new RowMapper<Subject>() {

			@Override
			public Subject mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Subject subject = new Subject();
								
				subject.setYear(rs.getInt("수강년도"));
				subject.setSemester(rs.getInt("학기"));
				subject.setSubcode(rs.getString("교과코드"));
				subject.setSubname(rs.getString("교과목명"));
				subject.setClassify(rs.getString("교과구분"));
				subject.setProfessor(rs.getString("담당교수"));
				subject.setCredits(rs.getInt("학점"));
								
				return subject;
			}
    		
    	}, new Object[]{name});
    
	    
    }
    	
    //query and return multiple objects
    public List<Subject> getSubjects() {
    	String sqlStatement="select * from subjects ORDER BY 수강년도";
    	return jdbcTemplate.query(sqlStatement, new RowMapper<Subject>() {

			@Override
			public Subject mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Subject subject = new Subject();
				
				subject.setYear(rs.getInt("수강년도"));
				subject.setSemester(rs.getInt("학기"));
				subject.setSubcode(rs.getString("교과코드"));
				subject.setSubname(rs.getString("교과목명"));
				subject.setClassify(rs.getString("교과구분"));
				subject.setProfessor(rs.getString("담당교수"));
				subject.setCredits(rs.getInt("학점"));
				
				return subject;
			}
    		
    	});
    	
    }
    
    //Crud method
    public boolean insert(Subject subject) {
    	int year = subject.getYear();
    	int semester = subject.getSemester();
    	String subcode = subject.getSubcode();
    	String subname = subject.getSubname();
    	String classify = subject.getClassify();
    	String professor = subject.getProfessor();
    	int credits = subject.getCredits();
    	
    	String sqlStatement = "insert into subjects (수강년도, 학기, 교과코드, 교과목명, 교과구분, 담당교수, 학점) value (?, ?, ?, ?, ?, ?, ?)";
    	return (jdbcTemplate.update(sqlStatement, new Object[]{year, semester, subcode, subname, classify, professor, credits})==1);
    }
    
//    //crUd method
//    public boolean update(Subject subject) {
//    	String subname = subject.getSubname();
//    	String professor = subject.getProfessor();
//    	int credit = subject.getCredits();
//    	
//    	String sqlStatement = "update subjects set name=?, email=?, text=?, where id=?";
//    	return (jdbcTemplate.update(sqlStatement, new Object[]{subname, professor, credit})==1);
//    }
    
//    // cruD method
//    public boolean delete(int id) {
//    	String sqlStatement = "delete from subjects where id=?";
//    	return (jdbcTemplate.update(sqlStatement, new Object[]{id})==1);
//    	
//    }
}