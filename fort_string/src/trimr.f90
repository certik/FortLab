subroutine trimr_scl(str, out_str)
  character(len=*), intent(in) :: str
  character(len=:), allocatable, intent(out) :: out_str
  out_str = trim(str)
end subroutine trimr_scl

subroutine trimr_vec(str, out_str)
  character(len=*), intent(in) :: str(:)
  character(len=:), allocatable, intent(out) :: out_str(:)
  integer :: n,i
  n = 0
  do i = 1,size(str)
     n = max(n,len_trim(str(i)))
  end do
  allocate(character(len=n) :: out_str(size(str)))
  do i = 1,size(str)
     out_str(i) = trim(str(i))
  end do
end subroutine trimr_vec

subroutine trimr_mat(str, out_str)
  character(len=*), intent(in) :: str(:,:)
  character(len=:), allocatable, intent(out) :: out_str(:,:)
  integer :: n,i,j
  n = 0
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        n = max(n,len_trim(str(i,j)))
     end do
  end do
  allocate(character(n) :: out_str(size(str,1),size(str,2)))
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        out_str(i,j) = trim(str(i,j))
     end do
  end do
end subroutine trimr_mat

