
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izcli](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[CODREGDU] [varchar](3) NULL,
	[CODQUA] [varchar](2) NULL,
	[DTQUAL] [date] NULL,
	[ATTRIBCLI] [varchar](6) NULL,
	[NOGEST] [varchar](35) NULL,
	[MAILGEST] [varchar](50) NULL,
	[TELGEST] [varchar](20) NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izcli] ADD  CONSTRAINT [PK_izcli] PRIMARY KEY CLUSTERED 
(
	[idcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izclicpt](
	[idclicpt] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[CHAP] [varchar](10) NOT NULL,
	[CPT] [char](12) NULL,
	[DE] [varchar](3) NOT NULL,
	[SOLDCPT] [money] NULL,
	[RIBCPT] [varchar](2) NULL,
	[AUT] [money] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izclicpt] ADD  CONSTRAINT [PK_izclicpt] PRIMARY KEY CLUSTERED 
(
	[idclicpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izclicpttpon](
	[idclicpttpon] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[CHAP] [varchar](10) NOT NULL,
	[CPT] [varchar](12) NOT NULL,
	[DE] [varchar](3) NOT NULL,
	[SOLDCPT] [money] NULL,
	[RIBCPT] [varchar](2) NULL,
	[AUT] [money] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izclicpttpon] ADD  CONSTRAINT [PK_izclicpttpon] PRIMARY KEY CLUSTERED 
(
	[idclicpttpon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izclienghb](
	[idenghb] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUDOS] [varchar](6) NOT NULL,
	[DE] [varchar](3) NULL,
	[MTINIT] [money] NULL,
	[CML] [money] NULL,
	[cpteeng] [char](11) NULL,
	[cpteprov] [char](11) NULL,
	[chapcpteeng] [char](10) NULL,
	[TYPDOSSIER] [varchar](3) NOT NULL,
	[eta] [varchar](2) NOT NULL,
	[DTDEC] [date] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izclienghbtpon](
	[idenghb] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUDOS] [varchar](6) NOT NULL,
	[DE] [varchar](3) NULL,
	[MTINIT] [money] NULL,
	[CML] [money] NULL,
	[cpteeng] [char](11) NULL,
	[cpteprov] [char](11) NULL,
	[chapcpteeng] [char](10) NULL,
	[TYPDOSSIER] [varchar](3) NOT NULL,
	[eta] [varchar](2) NOT NULL,
	[DTDEC] [date] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izclienghbtpon] ADD  CONSTRAINT [PK_idenghbtpon] PRIMARY KEY CLUSTERED 
(
	[idenghb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izclitpon](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[CODREGDU] [varchar](3) NULL,
	[CODQUA] [varchar](2) NULL,
	[DTQUAL] [date] NULL,
	[ATTRIBCLI] [varchar](6) NULL,
	[NOGEST] [varchar](60) NULL,
	[MAILGEST] [varchar](50) NULL,
	[TELGEST] [varchar](50) NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izclitpon] ADD  CONSTRAINT [PK_iztponcli] PRIMARY KEY CLUSTERED 
(
	[idcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izdtcompt](
	[dtcpt] [date] NOT NULL,
	[dtcour] [int] NULL,
	[dtsys] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izdtcompt] ADD  CONSTRAINT [PK_izdtcompt] PRIMARY KEY CLUSTERED 
(
	[dtcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_izdtcompt_insert]
ON [dbo].[izdtcompt]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

	DELETE FROM pgdtcpt WHERE dtcpt=(SELECT dtcpt  FROM inserted);
    INSERT INTO pgdtcpt (dtcpt, dtcour,dtsys) 
	SELECT dtcpt,1,dtsys FROM inserted;
END;
GO
ALTER TABLE [dbo].[izdtcompt] ENABLE TRIGGER [trg_izdtcompt_insert]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izdtcompttpon](
	[dtcpt] [date] NOT NULL,
	[dtcour] [int] NULL,
	[dtsys] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izdtcompttpon] ADD  CONSTRAINT [PK_izdtcompttpon] PRIMARY KEY CLUSTERED 
(
	[dtcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izgarcli](
	[NUGAR] [varchar](6) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUNATGAR] [varchar](3) NOT NULL,
	[MTGAR] [money] NOT NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[izgarcli] ADD  CONSTRAINT [PK_izgarcli] PRIMARY KEY CLUSTERED 
(
	[NUGAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izgarclitpon](
	[NUGAR] [varchar](6) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUNATGAR] [varchar](3) NOT NULL,
	[MTGAR] [money] NOT NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[izgarclitpon] ADD  CONSTRAINT [PK_izgarclitpon] PRIMARY KEY CLUSTERED 
(
	[NUGAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izgareng](
	[idgareng] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[DE] [varchar](3) NOT NULL,
	[CNAT] [varchar](3) NOT NULL,
	[CODGARANT] [varchar](15) NULL,
	[NUENG] [varchar](11) NULL,
	[TYPENG] [varchar](3) NULL,
	[mnta] [money] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izgareng] ADD  CONSTRAINT [PK_gareng] PRIMARY KEY CLUSTERED 
(
	[idgareng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izgarengtpon](
	[idgarengtpon] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[DE] [varchar](3) NOT NULL,
	[CNAT] [varchar](3) NOT NULL,
	[CODGARANT] [varchar](15) NULL,
	[NUENG] [varchar](11) NULL,
	[TYPENG] [varchar](3) NULL,
	[mnta] [money] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izgarengtpon] ADD  CONSTRAINT [PK_garengtpon] PRIMARY KEY CLUSTERED 
(
	[idgarengtpon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izgpegarel](
	[codegpenatgarel] [varchar](5) NOT NULL,
	[nogpenatgarel] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[izgpegarel] ADD  CONSTRAINT [PK_izgpegarel] PRIMARY KEY CLUSTERED 
(
	[codegpenatgarel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izlastdosprt](
	[idlastdosprt] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUNATENG] [int] NULL,
	[NUDOS] [varchar](10) NOT NULL,
	[AVE] [int] NULL,
	[DE] [varchar](3) NULL,
	[MTINITDOS] [money] NULL,
	[ETA] [varchar](2) NOT NULL,
	[REST] [int] NULL,
	[NUNIVDEC] [int] NULL,
	[NBRECHTOT] [int] NULL,
	[DTDERNECH] [date] NULL,
	[DTREST] [date] NULL,
	[nuplusancechimp] [int] NULL,
	[dtplusancechimp] [date] NULL,
	[nudernechapp] [int] NULL,
	[dtdernechapp] [date] NULL,
	[nuplusancechpy] [int] NULL,
	[dtplusancechpy] [date] NULL,
	[nudernechimppy] [int] NULL,
	[dtdernechimppy] [date] NULL,
	[nudernechimp] [int] NULL,
	[dtdernechimp] [date] NULL,
	[mtcouvgar] [money] NULL,
	[cpteeng] [varchar](12) NULL,
	[cpteimpcap] [varchar](12) NULL,
	[cpteimpint] [varchar](12) NULL,
	[cpteimpcomm] [varchar](12) NULL,
	[cptecreratt] [varchar](12) NULL,
	[cpteprovcap] [varchar](12) NULL,
	[cpteprovint] [varchar](12) NULL,
	[TYPDOSSIER] [varchar](3) NOT NULL,
	[dtdec] [date] NULL,
	[dtmf] [date] NULL,
	[dtminechpyregapdc] [date] NULL,
	[numinechpyregapdc] [int] NULL,
	[dtmaxechpyregapdc] [date] NULL,
	[numaxechpyregapdc] [int] NULL,
	[dtminechpyregapmf] [date] NULL,
	[numinechpyregapmf] [int] NULL,
	[dtmaxechpyregapmf] [date] NULL,
	[numaxechpyregapmf] [int] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izlastdosprt] ADD  CONSTRAINT [PK_lastdosprt] PRIMARY KEY CLUSTERED 
(
	[idlastdosprt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izlastdosprttpon](
	[idlastdosprt] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUNATENG] [int] NULL,
	[NUDOS] [varchar](10) NOT NULL,
	[AVE] [int] NULL,
	[DE] [varchar](3) NULL,
	[MTINITDOS] [money] NULL,
	[ETA] [varchar](2) NOT NULL,
	[REST] [int] NULL,
	[NUNIVDEC] [int] NULL,
	[NBRECHTOT] [int] NULL,
	[DTDERNECH] [date] NULL,
	[DTREST] [date] NULL,
	[nuplusancechimp] [int] NULL,
	[dtplusancechimp] [date] NULL,
	[nudernechapp] [int] NULL,
	[dtdernechapp] [date] NULL,
	[nuplusancechpy] [int] NULL,
	[dtplusancechpy] [date] NULL,
	[nudernechimppy] [int] NULL,
	[dtdernechimppy] [date] NULL,
	[nudernechimp] [int] NULL,
	[dtdernechimp] [date] NULL,
	[mtcouvgar] [money] NULL,
	[cpteeng] [varchar](12) NULL,
	[cpteimpcap] [varchar](12) NULL,
	[cpteimpint] [varchar](12) NULL,
	[cpteimpcomm] [varchar](12) NULL,
	[cptecreratt] [varchar](12) NULL,
	[cpteprovcap] [varchar](12) NULL,
	[cpteprovint] [varchar](12) NULL,
	[TYPDOSSIER] [varchar](3) NOT NULL,
	[dtdec] [date] NULL,
	[dtmf] [date] NULL,
	[dtminechpyregapdc] [date] NULL,
	[numinechpyregapdc] [int] NULL,
	[dtmaxechpyregapdc] [date] NULL,
	[numaxechpyregapdc] [int] NULL,
	[dtminechpyregapmf] [date] NULL,
	[numinechpyregapmf] [int] NULL,
	[dtmaxechpyregapmf] [date] NULL,
	[numaxechpyregapmf] [int] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izlastdosprttpon] ADD  CONSTRAINT [PK_lastdosprttpon] PRIMARY KEY CLUSTERED 
(
	[idlastdosprt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iznatgar](
	[NUNATGAR] [varchar](3) NOT NULL,
	[NONATGAR] [varchar](100) NOT NULL,
	[codegpenatgarel] [varchar](6) NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[iznatgar] ADD  CONSTRAINT [PK_iznatgar] PRIMARY KEY CLUSTERED 
(
	[NUNATGAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iznatgartpon](
	[NUNATGAR] [varchar](3) NOT NULL,
	[NONATGAR] [varchar](100) NOT NULL,
	[codegpenatgarel] [varchar](6) NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[iznatgartpon] ADD  CONSTRAINT [PK_iznatgartpon] PRIMARY KEY CLUSTERED 
(
	[NUNATGAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izsitucpt](
	[idsitucpt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[codcli] [varchar](15) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[de] [varchar](3) NOT NULL,
	[rib] [varchar](2) NULL,
	[solde] [decimal](19, 4) NULL,
	[soldehi] [decimal](19, 4) NULL,
	[dttrait] [date] NOT NULL,
	[solde90] [decimal](19, 4) NULL,
	[solde180] [decimal](19, 4) NULL,
	[solde60] [decimal](19, 4) NULL,
	[solde30] [decimal](19, 4) NULL,
	[dtdernmvtcred] [date] NULL,
	[dtdernsldcred] [date] NULL,
	[dtdepassement] [date] NULL,
	[cumagios180] [decimal](19, 4) NULL,
	[cumagios90] [decimal](19, 4) NULL,
	[cumagios60] [decimal](19, 4) NULL,
	[cumagios30] [decimal](19, 4) NULL,
	[cummvtcred180] [decimal](19, 4) NULL,
	[cummvtcred90] [decimal](19, 4) NULL,
	[cummvtcred60] [decimal](19, 4) NULL,
	[cummvtcred30] [decimal](19, 4) NULL,
	[eta] [varchar](2) NULL,
	[REST] [int] NULL,
	[DTREST] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izsitucpt] ADD  CONSTRAINT [PK_situcpt] PRIMARY KEY CLUSTERED 
(
	[idsitucpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izsitucpttpon](
	[idsitucpttpon] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[codcli] [varchar](15) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[de] [varchar](3) NOT NULL,
	[rib] [varchar](2) NULL,
	[solde] [decimal](19, 4) NULL,
	[soldehi] [decimal](19, 4) NULL,
	[dttrait] [date] NOT NULL,
	[solde90] [decimal](19, 4) NULL,
	[solde180] [decimal](19, 4) NULL,
	[solde60] [decimal](19, 4) NULL,
	[solde30] [decimal](19, 4) NULL,
	[dtdernmvtcred] [date] NULL,
	[dtdernsldcred] [date] NULL,
	[dtdepassement] [date] NULL,
	[cumagios180] [decimal](19, 4) NULL,
	[cumagios90] [decimal](19, 4) NULL,
	[cumagios60] [decimal](19, 4) NULL,
	[cumagios30] [decimal](19, 4) NULL,
	[cummvtcred180] [decimal](19, 4) NULL,
	[cummvtcred90] [decimal](19, 4) NULL,
	[cummvtcred60] [decimal](19, 4) NULL,
	[cummvtcred30] [decimal](19, 4) NULL,
	[eta] [varchar](2) NULL,
	[REST] [int] NULL,
	[DTREST] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[izsitucpttpon] ADD  CONSTRAINT [PK_situcpttpon] PRIMARY KEY CLUSTERED 
(
	[idsitucpttpon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izzchapcpt](
	[CHAP] [varchar](10) NOT NULL,
	[PCB] [varchar](1) NULL,
	[ESC] [int] NULL,
	[CCO] [int] NULL,
	[DTEXT] [date] NULL,
	[EHB] [int] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izzcli](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[CODREGDU] [varchar](3) NULL,
	[CODQUA] [varchar](2) NULL,
	[DTQUAL] [date] NULL,
	[ATTRIBCLI] [varchar](6) NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izzclicpt](
	[idclicpt] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[CHAP] [varchar](10) NOT NULL,
	[CPT] [varchar](11) NOT NULL,
	[DE] [varchar](3) NOT NULL,
	[SOLDCPT] [money] NULL,
	[RIBCPT] [varchar](2) NULL,
	[AUT] [money] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izzlastdosprt](
	[idlastdosprt] [int] IDENTITY(1,1) NOT NULL,
	[CODAGCE] [varchar](5) NOT NULL,
	[CODCLI] [varchar](15) NOT NULL,
	[NUNATENG] [int] NULL,
	[NUDOS] [varchar](6) NOT NULL,
	[AVE] [int] NULL,
	[DE] [varchar](3) NULL,
	[MTINITDOS] [money] NULL,
	[ETA] [varchar](2) NOT NULL,
	[REST] [int] NULL,
	[NUNIVDEC] [int] NULL,
	[NBRECHTOT] [int] NULL,
	[DTDERNECH] [date] NULL,
	[DTREST] [date] NULL,
	[nuplusancechimp] [int] NULL,
	[dtplusancechimp] [date] NULL,
	[nudernechapp] [int] NULL,
	[dtdernechapp] [date] NULL,
	[nuplusancechpy] [int] NULL,
	[dtplusancechpy] [date] NULL,
	[nudernechimppy] [int] NULL,
	[dtdernechimppy] [date] NULL,
	[nudernechimp] [int] NULL,
	[dtdernechimp] [date] NULL,
	[mtcouvgar] [money] NULL,
	[cpteeng] [char](11) NULL,
	[cpteimpcap] [char](11) NULL,
	[cpteimpint] [char](11) NULL,
	[cpteimpcomm] [char](11) NULL,
	[cptecreratt] [char](11) NULL,
	[TYPDOSSIER] [varchar](3) NOT NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izzsitucpt](
	[idsitucpt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[codcli] [varchar](15) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[de] [varchar](3) NOT NULL,
	[rib] [varchar](2) NULL,
	[solde] [decimal](19, 4) NULL,
	[soldehi] [decimal](19, 4) NULL,
	[dttrait] [date] NOT NULL,
	[solde90] [decimal](19, 4) NULL,
	[solde180] [decimal](19, 4) NULL,
	[solde60] [decimal](19, 4) NULL,
	[solde30] [decimal](19, 4) NULL,
	[dtdernmvtcred] [date] NULL,
	[dtdernsldcred] [date] NULL,
	[dtdepassement] [date] NULL,
	[cumagios180] [decimal](19, 4) NULL,
	[cumagios90] [decimal](19, 4) NULL,
	[cumagios60] [decimal](19, 4) NULL,
	[cumagios30] [decimal](19, 4) NULL,
	[cummvtcred180] [decimal](19, 4) NULL,
	[cummvtcred90] [decimal](19, 4) NULL,
	[cummvtcred60] [decimal](19, 4) NULL,
	[cummvtcred30] [decimal](19, 4) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izzzsitucpt](
	[idsitucpt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[codcli] [varchar](15) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[de] [varchar](3) NOT NULL,
	[rib] [varchar](2) NULL,
	[solde] [decimal](19, 4) NULL,
	[soldehi] [decimal](19, 4) NULL,
	[dttrait] [date] NOT NULL,
	[solde90] [decimal](19, 4) NULL,
	[solde180] [decimal](19, 4) NULL,
	[solde60] [decimal](19, 4) NULL,
	[solde30] [decimal](19, 4) NULL,
	[dtdernmvtcred] [date] NULL,
	[dtdernsldcred] [date] NULL,
	[dtdepassement] [date] NULL,
	[cumagios180] [decimal](19, 4) NULL,
	[cumagios90] [decimal](19, 4) NULL,
	[cumagios60] [decimal](19, 4) NULL,
	[cumagios30] [decimal](19, 4) NULL,
	[cummvtcred180] [decimal](19, 4) NULL,
	[cummvtcred90] [decimal](19, 4) NULL,
	[cummvtcred60] [decimal](19, 4) NULL,
	[cummvtcred30] [decimal](19, 4) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jwt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[desactive] [int] NULL,
	[expire] [int] NULL,
	[valeur] [varchar](300) NULL,
	[utilisateur_id] [varchar](300) NULL,
	[refreshtoken_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jwt] ADD  CONSTRAINT [PK_jwt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mclicli](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nocli] [varchar](50) NOT NULL,
	[precli] [varchar](60) NOT NULL,
	[codregdu] [varchar](2) NOT NULL,
	[codqua] [varchar](3) NULL,
	[dtqual] [date] NULL,
	[attribcli] [varchar](6) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mcptcli](
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[newcodcli] [varchar](38) NOT NULL,
	[newcodagce] [varchar](5) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[chap] [varchar](10) NOT NULL,
	[newcpt] [varchar](12) NULL
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mvtcompt](
	[numvtcpt] [int] IDENTITY(1,1) NOT NULL,
	[dtcpt] [date] NULL,
	[cpt] [varchar](12) NULL,
	[codcli] [varchar](20) NULL,
	[codagce] [varchar](3) NULL,
	[chap] [varchar](10) NULL,
	[sens] [varchar](1) NULL,
	[mont] [money] NULL,
	[coduser] [varchar](8) NULL,
	[nulotcpt] [varchar](10) NULL,
	[nupiececpt] [varchar](10) NULL,
	[dtval] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[mvtcompt] ADD  CONSTRAINT [PK_mvtcompt] PRIMARY KEY CLUSTERED 
(
	[numvtcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myapprole](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[myapprole] ADD  CONSTRAINT [PK_myapprole] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myappuser](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](15) NOT NULL,
	[password] [varchar](200) NULL,
	[email] [varchar](150) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[myappuser] ADD  CONSTRAINT [PK_myappuser] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myappuser_myapprole](
	[userid] [int] NOT NULL,
	[rolename] [varchar](15) NOT NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myappuserroles](
	[userroleid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[roleid] [int] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mysave_egcptdos](
	[idcptdos] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[nudoseng] [varchar](15) NULL,
	[nunatcpttrans] [int] NULL,
	[codnatcpt] [varchar](2) NULL,
	[cpt] [varchar](20) NULL,
	[typecpt] [char](1) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nb_cptechap](
	[nbre] [bigint] NULL,
	[chap] [varchar](10) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[cpt] [varchar](12) NOT NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nomcpt](
	[idnomcpt] [int] NOT NULL,
	[longcpte] [int] NOT NULL,
	[posmat] [int] NULL,
	[posprod] [int] NULL,
	[posnuordre] [int] NULL,
	[longmat] [int] NULL,
	[longprod] [int] NULL,
	[longinc] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[nomcpt] ADD  CONSTRAINT [PK_nomcpt] PRIMARY KEY CLUSTERED 
(
	[idnomcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parcorr](
	[nuparcorr] [int] IDENTITY(1,1) NOT NULL,
	[amp] [int] NOT NULL,
	[paramin] [varchar](25) NOT NULL,
	[paramout] [varchar](25) NOT NULL,
	[tbe] [varchar](25) NOT NULL,
	[expli] [varchar](225) NULL,
	[nomchamp] [varchar](50) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgchapcpt](
	[chap] [varchar](10) NOT NULL,
	[nochap] [varchar](50) NOT NULL,
	[sens] [varchar](1) NOT NULL,
	[poste] [varchar](1) NOT NULL,
	[pcb] [int] NOT NULL,
	[niv] [int] NOT NULL,
	[esc] [int] NULL,
	[cco] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgchapcpt] ADD  CONSTRAINT [PK_pgchapcpt] PRIMARY KEY CLUSTERED 
(
	[chap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgchapcpttpon](
	[chap] [varchar](10) NOT NULL,
	[nochap] [varchar](50) NOT NULL,
	[sens] [varchar](1) NOT NULL,
	[poste] [varchar](1) NOT NULL,
	[pcb] [int] NOT NULL,
	[niv] [int] NOT NULL,
	[esc] [int] NULL,
	[cco] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgchapcpttpon] ADD  CONSTRAINT [PK_pgchapcpttpon] PRIMARY KEY CLUSTERED 
(
	[chap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgchapnatcptoper](
	[idchapnatcpt] [int] IDENTITY(1,1) NOT NULL,
	[codoper] [varchar](3) NULL,
	[codnatcpt] [varchar](2) NULL,
	[chapnatcpt] [varchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgchapnatcptoper] ADD  CONSTRAINT [PK_pgchapnatcptoper] PRIMARY KEY CLUSTERED 
(
	[idchapnatcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgcodmajtble](
	[codemaj] [varchar](1) NOT NULL,
	[libmaj] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgcodmajtble] ADD  CONSTRAINT [PK_codmajtble] PRIMARY KEY CLUSTERED 
(
	[codemaj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

