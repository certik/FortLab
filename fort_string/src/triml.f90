subroutine triml_scl(str,out_str)
  character(len=*), intent(in) :: str
  character(len=:), allocatable, intent(out) :: out_str
  out_str = str(1 + len_trim(str) - len_trim(adjustl(str)):)
end subroutine triml_scl

subroutine triml_vec(str,out_str)
  character(len=*), intent(in) :: str(:)
  character(len=:), allocatable, intent(out) :: out_str(:)
  integer :: n,i,str_len
  integer :: first_char(size(str))
  str_len = len(str)
  do i = 1,size(str)
     first_char(i) = 1 + len_trim(str(i)) - len_trim(adjustl(str(i)))
  end do
  n = str_len - minval(first_char)
  allocate(character(len=n) :: out_str(size(str)))
  do i = 1,size(str)
     out_str(i) = str(i)(first_char(i):)
  end do
end subroutine triml_vec

subroutine triml_mat(str,out_str)
  character(len=*), intent(in) :: str(:,:)
  character(len=:), allocatable, intent(out) :: out_str(:,:)
  integer :: n,i,j,str_len
  integer :: first_char(size(str,1),size(str,2))
  str_len = len(str)
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        first_char(i,j) = 1 + len_trim(str(i,j)) - len_trim(adjustl(str(i,j)))
     end do
  end do
  n = str_len - minval(first_char)
  print *,"HELLO"
  allocate(character(len=n) :: out_str(size(str,1),size(str,2)))
  print *,"HELLO"
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        out_str(i,j) = str(i,j)(first_char(i,j):)
     end do
  end do
end subroutine triml_mat



