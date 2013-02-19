module fort_utils
  interface swap
     module procedure, private :: swap_int
     module procedure, private :: swap_real
     module procedure, private :: swap_dble
     module procedure, private :: swap_char
  end interface swap
contains
  include 'swap_int.f90'
  include 'swap_real.f90'
  include 'swap_dble.f90'
  include 'swap_char.f90'
end module fort_utils
