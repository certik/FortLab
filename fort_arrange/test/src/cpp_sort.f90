program main
  use, intrinsic :: iso_c_binding
  use FortLab
  implicit none
  interface
     subroutine c_sort_int (n,x) bind(c)
       use iso_c_binding
       integer (c_int), VALUE :: n
       integer (c_int) :: x(*)
     end subroutine c_sort_int
     subroutine c_sort_real (n,x) bind(c)
       use iso_c_binding
       integer (c_int), VALUE :: n
       real (c_float) :: x(*)
     end subroutine c_sort_real
     subroutine c_sort_dble (n,x) bind(c)
       use iso_c_binding
       integer (c_int), VALUE :: n
       real (c_double) :: x(*)
     end subroutine c_sort_dble
  end interface  
  integer(c_int), parameter :: n = 10000000
  real(c_double) :: x(n)
  double precision :: y(n)
  real :: t0,t1
  call random_number(x)
  y = x
  call c_sort_dble(n,x)
  call cpu_time(t0)
  call sort(y)
  call cpu_time(t1)
  print *,t1 - t0
end program main
