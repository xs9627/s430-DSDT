/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLSC9647.aml, Wed Nov 29 10:36:07 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000348 (840)
 *     Revision         0x02
 *     Checksum         0x5A
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLSC9647.aml", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (TCNT, IntObj)
    External (NPSS, IntObj)
    External (PDC0)
    External (CFGD)
    External (\_PR_.CPPC, IntObj)
    External (\_PR_.CPU0, DeviceObj)

    Scope (\_PR.CPU0)
    {
        Name (_PPC, Zero)
        Method (_PCT, 0, NotSerialized)
        {
            Store (\_PR.CPPC, \_PR.CPU0._PPC)
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x10,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x00000000000000B3, // Address
                        ,)
                }
            })
        }

        Method (XPSS, 0, NotSerialized)
        {
            If (And (PDC0, One))
            {
                Return (NPSS)
            }

            Return (SPSS)
        }

        Name (SPSS, Package (0x0D)
        {
            Package (0x06)
            {
                0x0960, 
                0x88B8, 
                0x6E, 
                0x0A, 
                0x83, 
                Zero
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x8068, 
                0x6E, 
                0x0A, 
                0x0183, 
                One
            }, 

            Package (0x06)
            {
                0x0898, 
                0x7997, 
                0x6E, 
                0x0A, 
                0x0283, 
                0x02
            }, 

            Package (0x06)
            {
                0x0834, 
                0x72E9, 
                0x6E, 
                0x0A, 
                0x0383, 
                0x03
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x6C5C, 
                0x6E, 
                0x0A, 
                0x0483, 
                0x04
            }, 

            Package (0x06)
            {
                0x076C, 
                0x65F0, 
                0x6E, 
                0x0A, 
                0x0583, 
                0x05
            }, 

            Package (0x06)
            {
                0x0708, 
                0x5FAA, 
                0x6E, 
                0x0A, 
                0x0683, 
                0x06
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x583C, 
                0x6E, 
                0x0A, 
                0x0783, 
                0x07
            }, 

            Package (0x06)
            {
                0x0640, 
                0x5235, 
                0x6E, 
                0x0A, 
                0x0883, 
                0x08
            }, 

            Package (0x06)
            {
                0x05DC, 
                0x4C4E, 
                0x6E, 
                0x0A, 
                0x0983, 
                0x09
            }, 

            Package (0x06)
            {
                0x0578, 
                0x4687, 
                0x6E, 
                0x0A, 
                0x0A83, 
                0x0A
            }, 

            Package (0x06)
            {
                0x0514, 
                0x40E3, 
                0x6E, 
                0x0A, 
                0x0B83, 
                0x0B
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x3B5A, 
                0x6E, 
                0x0A, 
                0x0C83, 
                0x0C
            }
        })
        Name (_PSS, Package (0x0D)
        {
            Package (0x06)
            {
                0x0960, 
                0x88B8, 
                0x0A, 
                0x0A, 
                0x1800, 
                0x1800
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x8068, 
                0x0A, 
                0x0A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0898, 
                0x7997, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x0834, 
                0x72E9, 
                0x0A, 
                0x0A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x6C5C, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x076C, 
                0x65F0, 
                0x0A, 
                0x0A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x0708, 
                0x5FAA, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x583C, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0x5235, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x05DC, 
                0x4C4E, 
                0x0A, 
                0x0A, 
                0x0F00, 
                0x0F00
            }, 

            Package (0x06)
            {
                0x0578, 
                0x4687, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0x40E3, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x3B5A, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }
        })
        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF)
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

