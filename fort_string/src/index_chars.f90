pure subroutine index_chars(str,chars,idx)
  character(len=*), intent(in) :: str, chars
  integer, allocatable, intent(out) :: idx(:)
  integer :: pos,n,i
  n = count_chars(str,chars)
  allocate(idx(n))
  pos = 0
  do i = 1,n
     pos = scan(str(pos + 1:),chars) + pos
     idx(i) = pos
  end do
end subroutine index_chars



