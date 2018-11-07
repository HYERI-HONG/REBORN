package model;

public class PagingVO {
	public static final int pageScale = 10; //������ �� ���� ����
	public static final int blockScale = 10;  //ȭ�� �� ������ ����
	
	private int currentPage;  //���� ������
	private int prevPage;     //���� ������
	private int nextPage;     //���� ������
	private int totalPage;    //��ü ������ ����
	private int totalBlock;   //��ü ������ ��� ����
	private int currentBlock; //���� ������ ���
	private int prevBlock;    //���� ������ ���
	private int nextBlock;    //���� ������ ���
	private int pageStart;    //������ �� ���� ���� ��ȣ
	private int pageEnd;      //������ �� ���� �� ��ȣ
	private int blockStart;   //���� ������ ��� ���� ��ȣ
	private int blockEnd;     //���� ������ ��� �� ��ȣ
	
	public PagingVO(int count, int currentPage) {
		currentBlock = 1;
		this.currentPage = currentPage;

		setTotalPage(count);
		setPageRange();
		setTotalBlock();
		setBlockRange();
	}
	
	public void setBlockRange() {
		currentBlock = (int)Math.ceil((currentPage-1)/blockScale) + 1;  //���� �������� �� ��° ��Ͽ� ���ϴ���
		
		//���� �������� ��� ���۰� �� ��ȣ ���
		blockStart = (currentBlock-1)*blockScale + 1;
		blockEnd = blockStart + blockScale - 1;
		
		//������ ����� ������ �ʰ����� �ʵ���
		if(blockEnd>totalPage)
			blockEnd = totalPage;
		
		//���� ��ư�� ������ �� �̵��� ������ ��ȣ
		prevPage = (currentPage == 1)? 1 : (currentBlock-1)*blockScale;
		
		//���� ��ư�� ������ �� �̵��� ������ ��ȣ
		nextPage = currentBlock>totalBlock ? (currentBlock*blockScale) : (currentBlock*blockScale) + 1;
		
		//������ �������� ������ �ʰ����� �ʵ���
		if(nextPage>=totalPage)
			nextPage = totalPage;
	}
	
	public void setPageRange() {
		//������ �� �� ���۰� �� ��ȣ ���
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