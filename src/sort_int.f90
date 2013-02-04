pure subroutine sort_int(vec)
  integer, intent(in out) :: vec(:)
  if (size(vec) > max_interchange_sort_size) then
     call quick_sort(vec)
  else
     call interchange_sort(vec)
  end if
end subroutine sort_int
