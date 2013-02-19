pure elemental subroutine swap_int(x,y)
  integer, intent(in out) :: x,y
  integer :: temp
  temp = x
  x = y
  y = temp
end subroutine swap_int
