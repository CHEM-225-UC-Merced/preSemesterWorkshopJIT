include '303_mod.f03'
      program complex
      use complex3_mod
!
!     This program is used to test the complex_mod module.
!
!
!     Variable Declarations
!
      implicit none
      type(myComplex)::z1,z2,z3
!
!     Set z1 and z2.
!
      z1 = setMyComplex(2.5,10.2)
      z2 = setMyComplex(6.5,15.1)
      call printMyComplex(z1,'z1 =')
      call printMyComplex(z2,'z2 =')
!
!     Add z1 and z2.
!
      z3 = myComplexAdd(z1,z2)
      call printMyComplex(z3,'z3 = z1 + z2 = ')
!
      write(*,*)' ALL DONE!!!'
      end program complex
