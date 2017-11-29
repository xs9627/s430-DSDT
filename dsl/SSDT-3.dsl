/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLFSRm0X.aml, Wed Nov 29 10:35:19 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000CF (207)
 *     Revision         0x02
 *     Checksum         0x59
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "IffsAsl"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLFSRm0X.aml", "SSDT", 2, "LENOVO", "IffsAsl", 0x00003000)
{
    Scope (\_SB)
    {
        Device (IFFS)
        {
            OperationRegion (FFSN, SystemMemory, 0x9AF5AE98, 0x09)
            Field (FFSN, AnyAcc, Lock, Preserve)
            {
                FFSA,   8, 
                FFSS,   8, 
                FFST,   16, 
                FFSP,   32
            }

            Name (_HID, EisaId ("INT3392"))
            Name (_CID, EisaId ("PNP0C02"))
            Method (GFFS, 0, Serialized)
            {
                Return (FFSS)
            }

            Method (SFFS, 1, Serialized)
            {
                And (Arg0, FFSA, FFSS)
                Return (FFSS)
            }

            Method (GFTV, 0, Serialized)
            {
                Return (FFST)
            }

            Method (SFTV, 1, Serialized)
            {
                If (LLessEqual (Arg0, 0x05A0))
                {
                    Store (Arg0, FFST)
                }
                Else
                {
                    And (FFSS, 0xFFFE, FFSS)
                    Store (0x0A, FFST)
                }

                Return (FFST)
            }
        }
    }
}

