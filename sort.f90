subroutine sort_int(n,list)
  integer, intent(in) :: n
  integer, intent(in out) :: list(n)
  if (n > max_interchange_sort_size) then
     call quick_sort(n,list)
  else
     call interchange_sort(n,list)
  end if
end subroutine sort_int

subroutine sort_real(n,list)
  integer, intent(in) :: n
  real, intent(in out) :: list(n)
  if (n > max_interchange_sort_size) then
     call quick_sort(n,list)
  else
     call interchange_sort(n,list)
  end if
end subroutine sort_real

subroutine sort_dble(n,list)
  integer, intent(in) :: n
  double precision, intent(in out) :: list(n)
  if (n > max_interchange_sort_size) then
     call quick_sort(n,list)
  else
     call interchange_sort(n,list)
  end if
end subroutine sort_dble

subroutine sort_list_int(n,list,map)
  integer, intent(in) :: n
  integer, intent(in out) :: list(n)
  integer, intent(out) :: map(n)
  integer :: i
  if (n > max_interchange_sort_size) then
     call quick_sort(n,list,map)
  else
     call interchange_sort(n,list,map)
  end if
end subroutine sort_list_int

subroutine sort_list_real(n,list,map)
  integer, intent(in) :: n
  real, intent(in out) :: list(n)
  integer, intent(out) :: map(n)
  integer :: i
  if (n > max_interchange_sort_size) then
     call quick_sort(n,list,map)
  else
     call interchange_sort(n,list,map)
  end if
end subroutine sort_list_real

subroutine sort_list_dble(n,list,map)
  integer, intent(in) :: n
  double precision, intent(in out) :: list(n)
  integer, intent(out) :: map(n)
  integer :: i
  if (n > max_interchange_sort_size) then
     call quick_sort(n,list,map)
  else
     call interchange_sort(n,list,map)
  end if
end subroutine sort_list_dble

