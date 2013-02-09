subroutine split(str,dlm,strings)
  character(len=*), intent(in) :: str,dlm
  character(len=:), allocatable, intent(out) :: strings(:)
  integer :: n,m,i,j,k
  integer, allocatable :: dlm_idx(:)

  !Get character index
  call index_chars(str,dlm,dlm_idx)
  
  !Find string size and char count
  if (dlm_idx(1) > 1) then
     n = 1
     m = dlm_idx(1) - 2
  else
     n = 0
     m = 0
  end if
  do i = 2,size(dlm_idx)
     k = dlm_idx(i) - dlm_idx(i - 1) 
     if (k > 1) then
        n = n + 1
        m = max(m,k - 1)
     end if
  end do
  k = len(str) - dlm_idx(size(dlm_idx))
  if (k > 0) then
     n = n + 1
     m = max(m,k)
  end if
  
  !Allocate
  allocate(character(len=m) :: strings(n))
  j = 1
  if (dlm_idx(1) > 1) then
     strings(j) = str(1:dlm_idx(1) - 1)
     j = j + 1
  end if
  do i = 2,size(dlm_idx)
     if (dlm_idx(i) - dlm_idx(i - 1) > 1) then
        strings(j) = str(dlm_idx(i - 1) + 1:dlm_idx(i) - 1)
        j = j + 1
     end if
  end do
  if (len(str) > dlm_idx(size(dlm_idx))) then
     strings(j) = str(dlm_idx(size(dlm_idx)) + 1:)
  end if
end subroutine split

