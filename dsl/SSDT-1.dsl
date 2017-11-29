/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLrJMBmV.aml, Wed Nov 29 10:34:36 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000083B (2107)
 *     Revision         0x02
 *     Checksum         0xD1
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLrJMBmV.aml", "SSDT", 2, "PmRef", "Cpu0Cst", 0x00003001)
{
    External (FMBL)
    External (PFLV)
    External (PWRS)
    External (PDC0)
    External (CFGD)
    External (CPID)
    External (\_PR_.CPU0, DeviceObj)

    Scope (\_PR.CPU0)
    {
        Name (C1LM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x02,               // Bit Offset
                    0x0000000000000000, // Address
                    0x01,               // Access Size
                    )
            }, 

            One, 
            One, 
            0x03E8
        })
        Name (C1LH, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            One, 
            One, 
            0x03E8
        })
        Name (C3LM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x02,               // Bit Offset
                    0x0000000000000010, // Address
                    0x01,               // Access Size
                    )
            }, 

            0x02, 
            0x94, 
            0x01F4
        })
        Name (C7SM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x02,               // Bit Offset
                    0x0000000000000031, // Address
                    0x01,               // Access Size
                    )
            }, 

            0x03, 
            0xC6, 
            0xC8
        })
        Name (C7LM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x02,               // Bit Offset
                    0x0000000000000030, // Address
                    0x01,               // Access Size
                    )
            }, 

            0x03, 
            0xC6, 
            0xC8
        })
        Name (C6LM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x02,               // Bit Offset
                    0x0000000000000020, // Address
                    0x01,               // Access Size
                    )
            }, 

            0x03, 
            0xA9, 
            0x015E
        })
        Name (C3LI, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000414, // Address
                    ,)
            }, 

            0x02, 
            0x94, 
            0x01F4
        })
        Name (C6LI, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000415, // Address
                    ,)
            }, 

            0x03, 
            0xA9, 
            0x015E
        })
        Name (C7LI, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000416, // Address
                    ,)
            }, 

            0x03, 
            0xC6, 
            0xC8
        })
        Name (C3ST, Package (0x04)
        {
            0x03, 
            Package (0x00) {}, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C2ST, Package (0x03)
        {
            0x02, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C1ST, Package (0x02)
        {
            One, 
            Package (0x00) {}
        })
        Name (CSTF, Zero)
        Method (_CST, 0, Serialized)
        {
            If (LNot (CSTF))
            {
                If (LEqual (And (CPID, 0x0FFF0FF0), 0x000306A0))
                {
                    If (And (CFGD, 0x00400000))
                    {
                        Store (0x3B, Index (C3LI, 0x02))
                        Store (0x3B, Index (C3LM, 0x02))
                        Store (0x50, Index (C6LI, 0x02))
                        Store (0x50, Index (C6LM, 0x02))
                        Store (0x57, Index (C7LI, 0x02))
                        Store (0x57, Index (C7LM, 0x02))
                        Store (0x57, Index (C7SM, 0x02))
                    }
                    Else
                    {
                        Store (0x94, Index (C3LI, 0x02))
                        Store (0x94, Index (C3LM, 0x02))
                        Store (0xA9, Index (C6LI, 0x02))
                        Store (0xA9, Index (C6LM, 0x02))
                        Store (0xC6, Index (C7LI, 0x02))
                        Store (0xC6, Index (C7LM, 0x02))
                        Store (0xC6, Index (C7SM, 0x02))
                    }
                }
                Else
                {
                    If (And (CFGD, 0x00400000))
                    {
                        Store (0x50, Index (C3LI, 0x02))
                        Store (0x50, Index (C3LM, 0x02))
                        Store (0x68, Index (C6LI, 0x02))
                        Store (0x68, Index (C6LM, 0x02))
                        Store (0x6D, Index (C7LI, 0x02))
                        Store (0x6D, Index (C7LM, 0x02))
                        Store (0x6D, Index (C7SM, 0x02))
                    }
                    Else
                    {
                        Store (0x9C, Index (C3LI, 0x02))
                        Store (0x9C, Index (C3LM, 0x02))
                        Store (0xB5, Index (C6LI, 0x02))
                        Store (0xB5, Index (C6LM, 0x02))
                        Store (0xC7, Index (C7LI, 0x02))
                        Store (0xC7, Index (C7LM, 0x02))
                        Store (0xC7, Index (C7SM, 0x02))
                    }
                }

                Store (Ones, CSTF)
            }

            If (LAnd (And (CFGD, 0x1000), And (PDC0, 0x0200)))
            {
                If (LOr (LNot (PWRS), LNotEqual (PFLV, FMBL)))
                {
                    If (And (CFGD, 0x00010000))
                    {
                        If (And (CFGD, 0x08))
                        {
                            Store (C1LM, Index (C3ST, One))
                            Store (C3LM, Index (C3ST, 0x02))
                            Store (C7SM, Index (C3ST, 0x03))
                            Return (C3ST)
                        }
                        Else
                        {
                            Store (C1LM, Index (C2ST, One))
                            Store (C7SM, Index (C2ST, 0x02))
                            Return (C2ST)
                        }
                    }

                    If (And (CFGD, 0x20))
                    {
                        If (And (CFGD, 0x08))
                        {
                            Store (C1LM, Index (C3ST, One))
                            Store (C3LM, Index (C3ST, 0x02))
                            Store (C7LM, Index (C3ST, 0x03))
                            Return (C3ST)
                        }
                        Else
                        {
                            Store (C1LM, Index (C2ST, One))
                            Store (C7LM, Index (C2ST, 0x02))
                            Return (C2ST)
                        }
                    }

                    If (And (CFGD, 0x10))
                    {
                        If (And (CFGD, 0x08))
                        {
                            Store (C1LM, Index (C3ST, One))
                            Store (C3LM, Index (C3ST, 0x02))
                            Store (C6LM, Index (C3ST, 0x03))
                            Return (C3ST)
                        }
                        Else
                        {
                            Store (C1LM, Index (C2ST, One))
                            Store (C6LM, Index (C2ST, 0x02))
                            Return (C2ST)
                        }
                    }

                    If (And (CFGD, 0x08))
                    {
                        Store (C1LM, Index (C2ST, One))
                        Store (C3LM, Index (C2ST, 0x02))
                        Return (C2ST)
                    }
                    Else
                    {
                        Store (C1LM, Index (C1ST, One))
                        Return (C1ST)
                    }
                }

                If (And (CFGD, 0x10))
                {
                    Store (C1LM, Index (C2ST, One))
                    Store (C6LM, Index (C2ST, 0x02))
                    Store (0x02, Index (DerefOf (Index (C2ST, 0x02)), One))
                    Return (C2ST)
                }
                Else
                {
                    If (And (CFGD, 0x08))
                    {
                        Store (C1LM, Index (C2ST, One))
                        Store (C3LM, Index (C2ST, 0x02))
                        Return (C2ST)
                    }
                    Else
                    {
                        Store (C1LM, Index (C1ST, One))
                        Return (C1ST)
                    }
                }
            }

            If (LAnd (And (CFGD, 0x1000), And (PDC0, 0x0100)))
            {
                If (LOr (LNot (PWRS), LNotEqual (PFLV, FMBL)))
                {
                    If (And (CFGD, 0x20))
                    {
                        If (And (CFGD, 0x08))
                        {
                            Store (C1LM, Index (C3ST, One))
                            Store (C3LI, Index (C3ST, 0x02))
                            Store (C7LI, Index (C3ST, 0x03))
                            Return (C3ST)
                        }
                        Else
                        {
                            Store (C1LM, Index (C2ST, One))
                            Store (C7LI, Index (C2ST, 0x02))
                            Return (C2ST)
                        }
                    }

                    If (And (CFGD, 0x10))
                    {
                        If (And (CFGD, 0x08))
                        {
                            Store (C1LM, Index (C3ST, One))
                            Store (C3LI, Index (C3ST, 0x02))
                            Store (C6LI, Index (C3ST, 0x03))
                            Return (C3ST)
                        }
                        Else
                        {
                            Store (C1LM, Index (C2ST, One))
                            Store (C6LI, Index (C2ST, 0x02))
                            Return (C2ST)
                        }
                    }

                    If (And (CFGD, 0x08))
                    {
                        Store (C1LM, Index (C2ST, One))
                        Store (C3LI, Index (C2ST, 0x02))
                        Return (C2ST)
                    }
                    Else
                    {
                        Store (C1LM, Index (C1ST, One))
                        Return (C1ST)
                    }
                }

                If (And (CFGD, 0x10))
                {
                    Store (C1LM, Index (C2ST, One))
                    Store (C6LI, Index (C2ST, 0x02))
                    Store (0x02, Index (DerefOf (Index (C2ST, 0x02)), One))
                    Return (C2ST)
                }
                Else
                {
                    If (And (CFGD, 0x08))
                    {
                        Store (C1LM, Index (C2ST, One))
                        Store (C3LI, Index (C2ST, 0x02))
                        Return (C2ST)
                    }
                    Else
                    {
                        Store (C1LM, Index (C1ST, One))
                        Return (C1ST)
                    }
                }
            }

            If (LOr (LNot (PWRS), LNotEqual (PFLV, FMBL)))
            {
                If (And (CFGD, 0x20))
                {
                    If (And (CFGD, 0x08))
                    {
                        Store (C1LH, Index (C3ST, One))
                        Store (C3LI, Index (C3ST, 0x02))
                        Store (C7LI, Index (C3ST, 0x03))
                        Return (C3ST)
                    }
                    Else
                    {
                        Store (C1LH, Index (C2ST, One))
                        Store (C7LI, Index (C2ST, 0x02))
                        Return (C2ST)
                    }
                }

                If (And (CFGD, 0x10))
                {
                    If (And (CFGD, 0x08))
                    {
                        Store (C1LH, Index (C3ST, One))
                        Store (C3LI, Index (C3ST, 0x02))
                        Store (C6LI, Index (C3ST, 0x03))
                        Return (C3ST)
                    }
                    Else
                    {
                        Store (C1LH, Index (C2ST, One))
                        Store (C6LI, Index (C2ST, 0x02))
                        Return (C2ST)
                    }
                }

                If (And (CFGD, 0x08))
                {
                    Store (C1LH, Index (C2ST, One))
                    Store (C3LI, Index (C2ST, 0x02))
                    Return (C2ST)
                }
                Else
                {
                    Store (C1LH, Index (C1ST, One))
                    Return (C1ST)
                }
            }

            If (And (CFGD, 0x10))
            {
                Store (C1LH, Index (C2ST, One))
                Store (C6LI, Index (C2ST, 0x02))
                Store (0x02, Index (DerefOf (Index (C2ST, 0x02)), One))
                Return (C2ST)
            }
            Else
            {
                If (And (CFGD, 0x08))
                {
                    Store (C1LH, Index (C2ST, One))
                    Store (C3LI, Index (C2ST, 0x02))
                    Return (C2ST)
                }
                Else
                {
                    Store (C1LH, Index (C1ST, One))
                    Return (C1ST)
                }
            }
        }
    }
}

