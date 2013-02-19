pure elemental subroutine swap_real(x,y)
  real, intent(in out) :: x,y
  real :: temp
  temp = x
  x = y
  y = temp
end subroutine swap_real
