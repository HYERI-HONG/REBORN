package model;

public class PagingVO {
	public static final int pageScale = 10; //페이지 당 글의 갯수
	public static final int blockScale = 10;  //화면 당 페이지 갯수
	
	private int currentPage;  //현재 페이지
	private int prevPage;     //이전 페이지
	private int nextPage;     //다음 페이지
	private int totalPage;    //전체 페이지 갯수
	private int totalBlock;   //전체 페이지 블록 갯수
	private int currentBlock; //현재 페이지 블록
	private int prevBlock;    //이전 페이지 블록
	private int nextBlock;    //다음 페이지 블록
	private int pageStart;    //페이지 내 글의 시작 번호
	private int pageEnd;      //페이지 내 글의 끝 번호
	private int blockStart;   //현재 페이지 블록 시작 번호
	private int blockEnd;     //현재 페이지 블록 끝 번호
	
	public PagingVO(int count, int currentPage) {
		currentBlock = 1;
		this.currentPage = currentPage;

		setTotalPage(count);
		setPageRange();
		setTotalBlock();
		setBlockRange();
	}
	
	public void setBlockRange() {
		currentBlock = (int)Math.ceil((currentPage-1)/blockScale) + 1;  //현재 페이지가 몇 번째 블록에 속하는지
		
		//현재 페이지의 블록 시작과 끝 번호 계산
		blockStart = (currentBlock-1)*blockScale + 1;
		blockEnd = blockStart + blockScale - 1;
		
		//마지막 블록이 범위를 초과하지 않도록
		if(blockEnd>totalPage)
			blockEnd = totalPage;
		
		//이전 버튼을 눌렀을 때 이동할 페이지 번호
		prevPage = (currentPage == 1)? 1 : (currentBlock-1)*blockScale;
		
		//다음 버튼을 눌렀을 때 이동할 페이지 번호
		nextPage = currentBlock>totalBlock ? (currentBlock*blockScale) : (currentBlock*blockScale) + 1;
		
		//마지막 페이지가 범위를 초과하지 않도록
		if(nextPage>=totalPage)
			nextPage = totalPage;
	}
	
	public void setPageRange() {
		//페이지 내 글 시작과 끝 번호 계산
		pageStart = (currentPage-1)*pageScale + 1;
		pageEnd = pageStart + pageScale - 1;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int count) {
		this.totalPage = (int)Math.ceil(count*1.0/pageScale);
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock() {
		this.totalBlock = (int)Math.ceil(totalPage/blockScale);
	}

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getNextBlock() {
		return nextBlock;
	}

	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}

	public int getPageStart() {
		return pageStart;
	}

	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}

	public int getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}

	public int getBlockStart() {
		return blockStart;
	}

	public void setBlockStart(int blockStart) {
		this.blockStart = blockStart;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
}