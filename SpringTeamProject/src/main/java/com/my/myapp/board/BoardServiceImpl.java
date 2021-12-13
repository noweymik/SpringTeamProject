package com.my.myapp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
	@Override
	public BoardVO getBoard(int id) {
		return boardDAO.getBoard(id);
	}
	@Override
	public List<BoardVO> getBoardList(){
		return boardDAO.getBoardList();
	}
	@Override
	public int deleteBoard(int id) {
		// TODO Auto-generated method stub
		return boardDAO.deleteBoard(id);
	}
	@Override
	public int updateBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return boardDAO.updateBoard(vo);
	}

}
