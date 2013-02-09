subroutine strip_scl(str,out_str)
  character(len=*), intent(in) :: str
  character(len=:), allocatable :: out_str
  out_str = trim(adjustl(str))
end subroutine strip_scl

subroutine strip_vec(str,out_str)
  character(len=*), intent(in) :: str(:)
  character(len=:), allocatable :: out_str(:)
  integer :: i,n
  n = 0
  do i = 1,size(str)
     n = max(n,len_trim(adjustl(str(i))))
  end do
  allocate(character(len=n) :: out_str(size(str)))
  do i = 1,size(str)
     out_str(i) = trim(adjustl(str(i)))
  end do
end subroutine strip_vec

subroutine strip_mat(str,out_str)
  character(len=*), intent(in) :: str(:,:)
  character(len=:), allocatable :: out_str(:,:)
  integer :: i,j,n
  n = 0
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        n = max(n,len_trim(adjustl(str(i,j))))
     end do
  end do
  allocate(character(len=n) :: out_str(size(str,1),size(str,2)))
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        out_str(i,j) = trim(adjustl(str(i,j)))
     end do
  end do
end subroutine strip_mat
