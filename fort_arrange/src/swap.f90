pure subroutine swap_int(x,y)
  integer, intent(in out) :: x,y
  integer :: z
  z = x
  x = y
  y = z
end subroutine swap_int

pure subroutine swap_real(x,y)
  real, intent(in out) :: x,y
  real :: z
  z = x
  x = y
  y = z
end subroutine swap_real

pure subroutine swap_dble(x,y)
  double precision, intent(in out) :: x,y
  double precision :: z
  z = x
  x = y
  y = z
end subroutine swap_dble
