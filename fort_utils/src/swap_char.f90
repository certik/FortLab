pure elemental subroutine swap_char(x,y)
  character(len=*), intent(in out) :: x,y
  character(len=len(x)) :: temp
  temp = x
  x = y
  y = temp
end subroutine swap_char
