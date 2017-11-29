/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLEUSjnh.aml, Wed Nov 29 10:35:36 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000007C3 (1987)
 *     Revision         0x02
 *     Checksum         0x14
 *     OEM ID           "NvORef"
 *     OEM Table ID     "NvOptTbl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLEUSjnh.aml", "SSDT", 2, "NvORef", "NvOptTbl", 0x00001000)
{
    External (P8XH, MethodObj)    // 2 Arguments
    External (EBAS, MethodObj)    // 1 Arguments
    External (NVHA, MethodObj)    // 1 Arguments
    External (\GBAS, MethodObj)    // 1 Arguments
    External (\XBAS, MethodObj)    // 1 Arguments
    External (\_SB_.PCI0, DeviceObj)
    External (\_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (\_SB_.PCI0.PEG0.PEGP._STA, IntObj)

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\)
    {
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (NVHM, SystemMemory, NVHA (0x00010400), Field (NVHM, AnyAcc, NoLock, Preserve)
            {
                        Offset (0x100), 
                NVHO,   32, 
                RVBS,   32, 
                        Offset (0x400), 
                RBF1,   262144, 
                RBF2,   262144
            })
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (RTCO, SystemIO, 0x72, 0x02)
        Field (RTCO, ByteAcc, NoLock, Preserve)
        {
            CIND,   8, 
            CDAT,   8
        }

        IndexField (CIND, CDAT, ByteAcc, NoLock, Preserve)
        {
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        OperationRegion (RPCI, PCI_Config, Zero, 0xF0)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
                    Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1
        }

        OperationRegion (RPCX, SystemMemory, \XBAS (0x8400), Field (RPCX, DWordAcc, NoLock, Preserve)
            {
                        Offset (0x8214), 
                        Offset (0x8216), 
                LNKS,   4
            })
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_ROM, 2, NotSerialized)
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                    0x00
                })
            }

            If (LGreater (Local0, RVBS))
            {
                Return (Buffer (Local1)
                {
                    0x00
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                0x00
            })
            Name (ROM2, Buffer (Local1)
            {
                0x00
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0018 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0020 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0028 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0030 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0038 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0040 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0048 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0050 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0058 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0060 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0068 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0070 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0078 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0080 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0088 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0090 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0098 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00A0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00A8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00B0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00B8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00C0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00C8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00D0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00D8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 00E0 */    0x00, 0x00
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK)
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (OMPR, 0x02)
        OperationRegion (GPIO, SystemIO, \GBAS (0x60), Field (GPIO, ByteAcc, Lock, Preserve)
            {
                        Offset (0x38), 
                    ,   18, 
                DGRS,   1, 
                    ,   1, 
                NVPW,   1, 
                    ,   1, 
                DGPW,   1
            })
        OperationRegion (PCIS, SystemMemory, EBAS (0x0100), Field (PCIS, ByteAcc, NoLock, Preserve)
            {
                VGAR,   2048
            })
        Name (SETF, Zero)
        Name (VGAB, Buffer (0x0100)
        {
            /* 0000 */    0xDE, 0x10, 0xF5, 0x0D, 0x00, 0x04, 0x10, 0x00, 
            /* 0008 */    0xA1, 0x00, 0x00, 0x03, 0x10, 0x00, 0x00, 0x00, 
            /* 0010 */    0x00, 0x00, 0x00, 0xB0, 0x0C, 0x00, 0x00, 0x80, 
            /* 0018 */    0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x90, 
            /* 0020 */    0x00, 0x00, 0x00, 0x00, 0x81, 0x5F, 0x00, 0x00, 
            /* 0028 */    0x00, 0x00, 0x00, 0x00, 0xC0, 0x14, 0x63, 0x00, 
            /* 0030 */    0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 
            /* 0038 */    0x00, 0x00, 0x00, 0x00, 0x10, 0x01, 0x00, 0x00, 
            /* 0040 */    0xC0, 0x14, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0048 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0050 */    0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 
            /* 0058 */    0xCE, 0xD6, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0060 */    0x01, 0x68, 0x03, 0x00, 0x0B, 0x00, 0x00, 0x00, 
            /* 0068 */    0x05, 0x78, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0070 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0078 */    0x10, 0xB4, 0x02, 0x00, 0xE0, 0x8D, 0x2C, 0x01, 
            /* 0080 */    0x10, 0x29, 0x00, 0x00, 0x01, 0x2D, 0x05, 0x00, 
            /* 0088 */    0x43, 0x01, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 
            /* 0090 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 0098 */    0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 
            /* 00A0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00A8 */    0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00B0 */    0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x14, 0x01, 
            /* 00B8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00C0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00C8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00D0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00D8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00E0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00E8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00F0 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
            /* 00F8 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Method (NVOP, 4, NotSerialized)
        {
            Name (_T_0, Zero)
            Store ("------- NV OPTIMUS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Store (ToInteger (Arg2), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (Buffer (0x04)
                    {
                        0x00, 0x00, 0x00, 0x00
                    }, Local0)
                Divide (Zero, 0x08, Local2, Local1)
                ShiftLeft (One, Local2, Local2)
                Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                    ))
                Divide (0x1A, 0x08, Local2, Local1)
                ShiftLeft (One, Local2, Local2)
                Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                    ))
                Divide (0x10, 0x08, Local2, Local1)
                ShiftLeft (One, Local2, Local2)
                Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                    ))
                Return (Local0)
            }
            Else
            {
                If (LEqual (_T_0, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    CreateField (Arg3, Zero, One, FLCH)
                    If (ToInteger (FLCH))
                    {
                        Store (OPCE, OMPR)
                    }

                    Store (Buffer (0x04)
                        {
                            0x00, 0x00, 0x00, 0x00
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, DGPC)
                    If (\_SB.PCI0.PEG0.PEGP._STA)
                    {
                        Store (0x03, CGCS)
                    }

                    Return (Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x10))
                    {
                        Return (\_SB.PCI0.PEG0.PEGP.GOBT (Arg3))
                    }
                }
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Name (DGOS, Zero)
        OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }

        Method (_PS0, 0, NotSerialized)
        {
            If (DGOS)
            {
                \_SB.PCI0.PEG0.PEGP._ON ()
                Store (Zero, DGOS)
                Store (Zero, MLTF)
            }
        }

        Method (_PS3, 0, NotSerialized)
        {
            If (LEqual (\_SB.PCI0.PEG0.PEGP.OMPR, 0x03))
            {
                \_SB.PCI0.PEG0.PEGP._OFF ()
                Store (One, DGOS)
                Store (0x02, \_SB.PCI0.PEG0.PEGP.OMPR)
            }
        }

        Method (_ON, 0, Serialized)
        {
            P8XH (Zero, 0xE1)
            Store (Zero, DGRS)
            Sleep (0x64)
            Store (One, DGPW)
            Sleep (0x02)
            Store (One, NVPW)
            Sleep (0x012C)
            Store (One, DGRS)
            Sleep (0x64)
            Store (Zero, LNKD)
            While (LLess (LNKS, 0x07))
            {
                Sleep (One)
            }

            If (LEqual (SETF, One))
            {
                Store (VGAB, VGAR)
            }

            Return (One)
        }

        Method (_OFF, 0, Serialized)
        {
            P8XH (Zero, 0xE0)
            Store (One, SETF)
            Store (VGAR, VGAB)
            Store (One, LNKD)
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            Store (Zero, DGRS)
            Store (Zero, NVPW)
            Store (Zero, DGPW)
            Return (Zero)
        }
    }

    Scope (\)
    {
        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (
                    Arg1, Local0))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_DSM, 4, Serialized)
        {
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */    0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47, 
                        /* 0008 */    0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                    }))
            {
                Return (\_SB.PCI0.PEG0.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            Return (0x80000001)
        }
    }
}

