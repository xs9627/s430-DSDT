/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLPXPyUV.aml, Wed Nov 29 10:36:56 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000007B5 (1973)
 *     Revision         0x02
 *     Checksum         0x11
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLPXPyUV.aml", "SSDT", 2, "LENOVO", "SataAhci", 0x00001000)
{
    External (\DPP4)
    External (\DPP3)
    External (\DPP2)
    External (\CDAH, IntObj)
    External (\CDFL, IntObj)
    External (\DPP1)
    External (\IDET)
    External (\WIN8, IntObj)
    External (\DPP0)
    External (\_SB_.PCI0.SAT0, DeviceObj)
    External (\_SB_.PCI0.LPCB.EC0_.BGID, IntObj)
    External (\_SB_.PCI0.LPCB.EC0_.BDEV)
    External (\_SB_.PCI0.LPCB.EC0_.BSTA, MethodObj)    // 1 Arguments
    External (\_SB_.PCI0.LPCB.EC0_.BEJ0, MethodObj)    // 1 Arguments

    Scope (\_SB.PCI0.SAT0)
    {
        Device (PRT0)
        {
            Name (DIP0, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0xFFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (Zero, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP0, And (M078, 0x08)))
                    {
                        Store (One, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT1)
        {
            Name (DIP0, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_EJ0, 1, NotSerialized)
            {
                \_SB.PCI0.LPCB.EC0.BEJ0 (Arg0)
            }

            Method (_STA, 0, NotSerialized)
            {
                If (\WIN8)
                {
                    If (\_SB.PCI0.LPCB.EC0.BSTA (One))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (0x0F)
            }

            Method (_PLD, 0, Serialized)
            {
                Name (PLD7, Buffer (0x10)
                {
                    /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                    /* 0008 */    0x59, 0x11, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00
                })
                Name (PLD8, Buffer (0x10)
                {
                    /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                    /* 0008 */    0x59, 0x11, 0x00, 0x80, 0x03, 0x00, 0x00, 0x00
                })
                If (\WIN8)
                {
                    Return (PLD8)
                }

                Return (PLD7)
            }

            Name (_ADR, 0x0001FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (Zero, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    CreateWordField (Arg0, Zero, M000)
                    If (And (M000, 0xC000))
                    {
                        If (LNot (And (M000, 0x4000)))
                        {
                            Store (0x03, \IDET)
                            Store (0x03, \_SB.PCI0.LPCB.EC0.BDEV)
                        }
                    }
                    Else
                    {
                        Store (0x06, \IDET)
                        Store (0x06, \_SB.PCI0.LPCB.EC0.BDEV)
                    }

                    If (LAnd (\DPP1, And (M078, 0x08)))
                    {
                        Store (One, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                Store (\_SB.PCI0.LPCB.EC0.BGID, Local0)
                If (LEqual (Local0, 0x07))
                {
                    Store (0x06, Local0)
                }

                If (LEqual (Local0, 0x06))
                {
                    If (DIP0)
                    {
                        Return (HPTF)
                    }

                    Return (HDTF)
                }

                If (DIP0)
                {
                    Store (\CDFL, GTFT)
                    Store (\CDAH, GTAT)
                    Return (DGTF)
                }

                Store (\CDFL, DTFT)
                Store (\CDAH, DTAT)
                Return (DDTF)
            }
        }

        Device (PRT2)
        {
            Name (DIP0, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0002FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (Zero, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP2, And (M078, 0x08)))
                    {
                        Store (One, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT3)
        {
            Name (DIP0, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0003FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (Zero, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP3, And (M078, 0x08)))
                    {
                        Store (One, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT4)
        {
            Name (DIP0, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, One, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, One, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0004FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (Zero, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP4, And (M078, 0x08)))
                    {
                        Store (One, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }
    }
}

