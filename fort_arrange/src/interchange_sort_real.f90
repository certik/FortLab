pure subroutine interchange_sort_real(vec)
  real, intent(in out) :: vec(:)
  integer :: i,j
  do i = 1,size(vec) - 1
     j = minloc(vec(i:),1)
     if (j > 1) call swap(vec(i),vec(i + j - 1))
  end do
end subroutine interchange_sort_real
