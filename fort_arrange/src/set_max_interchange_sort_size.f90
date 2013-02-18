subroutine set_max_interchange_sort_size(x)
  integer, intent(in) :: x
  max_interchange_sort_size = max(2,x)
end subroutine set_max_interchange_sort_size

