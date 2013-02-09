function is_sorted_real(vec) result(out)
  real, intent(in) :: vec(:)
  integer :: i,out
  out = 0
  do i = 2,size(vec)
     if (vec(i) < vec(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_real

