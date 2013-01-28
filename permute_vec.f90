subroutine permute_vec_int(n,m,map,vec_in,vec_out)
  integer, intent(in) :: n,m,map(m)
  integer, intent(in) :: vec_in(n)
  integer, intent(out) :: vec_out(m)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,10)
     stop
  end if
  do i = 1,m
     vec_out(i) = vec_in(map(i))
  end do
10 format('Error: Invalid reference in map')
end subroutine permute_vec_int

subroutine permute_vec_real(n,m,map,vec_in,vec_out)
  integer, intent(in) :: n,m,map(m)
  real, intent(in) :: vec_in(n)
  real, intent(out) :: vec_out(m)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,10)
     stop
  end if
  do i = 1,m
     vec_out(i) = vec_in(map(i))
  end do
10 format('Error: Invalid reference in map')
end subroutine permute_vec_real

subroutine permute_vec_dble(n,m,map,vec_in,vec_out)
  integer, intent(in) :: n,m,map(m)
  double precision, intent(in) :: vec_in(n)
  double precision, intent(out) :: vec_out(m)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,10)
     stop
  end if
  do i = 1,m
     vec_out(i) = vec_in(map(i))
  end do
10 format('Error: Invalid reference in map')
end subroutine permute_vec_dble
