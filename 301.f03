include '301_mod.f03'
      program complex
      use complex_mod
!
!     This program is used to test the complex_mod module.
!
!
!     Variable Declarations
!
      implicit none
      type(myComplex)::z1
!
!     Set z1 to a value and then print it out.
!
      z1 = setMyComplex(2.5,10.2)
      call printMyComplex(z1,'z1 =')
!
      write(*,*)' ALL DONE!!!'
      end program complex
