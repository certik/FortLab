pure elemental subroutine swap_dble(x,y)
  double precision, intent(in out) :: x,y
  double precision :: temp
  temp = x
  x = y
  y = temp
end subroutine swap_dble
