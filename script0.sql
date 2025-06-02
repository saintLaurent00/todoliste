
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgcrit](
	[nicrit] [int] IDENTITY(1,1) NOT NULL,
	[nocrit] [varchar](30) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgcrit] ADD  CONSTRAINT [PK_pgcrit] PRIMARY KEY CLUSTERED 
(
	[nicrit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgdev](
	[coddev] [varchar](3) NOT NULL,
	[nodev] [varchar](25) NOT NULL,
	[numdev] [int] NOT NULL,
	[nbdec] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgdev] ADD  CONSTRAINT [PK_pgdev] PRIMARY KEY CLUSTERED 
(
	[coddev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgdtcpt](
	[dtcpt] [date] NOT NULL,
	[dtcour] [int] NULL,
	[dtsys] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgdtcpt] ADD  CONSTRAINT [PK_pgdtcpt] PRIMARY KEY CLUSTERED 
(
	[dtcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgjourferie](
	[idjourferie] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[dtcptfer] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgjourferie] ADD  CONSTRAINT [PK_jourferie] PRIMARY KEY CLUSTERED 
(
	[idjourferie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgnatcpt](
	[codnatcpt] [varchar](2) NOT NULL,
	[nonatcpt] [varchar](25) NOT NULL,
	[typecpt] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgnatcpt] ADD  CONSTRAINT [PK_pgnatcpt] PRIMARY KEY CLUSTERED 
(
	[codnatcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgnatcptoper](
	[idnatcptoper] [int] IDENTITY(1,1) NOT NULL,
	[codoper] [varchar](3) NULL,
	[codnatcpt] [varchar](2) NULL,
	[nonatcpt] [varchar](40) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgnatcptoper] ADD  CONSTRAINT [PK_pgnatcptoper] PRIMARY KEY CLUSTERED 
(
	[idnatcptoper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgnatcptoper](
	[idnatcptoper] [int] IDENTITY(1,1) NOT NULL,
	[codoper] [varchar](3) NULL,
	[codnatcpt] [varchar](2) NULL,
	[nonatcpt] [varchar](40) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgnatcptoper] ADD  CONSTRAINT [PK_pgnatcptoper] PRIMARY KEY CLUSTERED 
(
	[idnatcptoper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgnatcpttrans](
	[idnatcpttrans] [int] IDENTITY(1,1) NOT NULL,
	[codoper] [varchar](3) NULL,
	[codtrans] [varchar](6) NULL,
	[codnatcpt] [varchar](2) NULL,
	[chapnatcpt] [varchar](6) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgnatcpttrans] ADD  CONSTRAINT [PK_pgnatcpttrans] PRIMARY KEY CLUSTERED 
(
	[idnatcpttrans] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgopercpt](
	[codoper] [varchar](3) NOT NULL,
	[nooper] [varchar](40) NOT NULL,
	[dtfinoper] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgopercpt] ADD  CONSTRAINT [PK_pgopercpt] PRIMARY KEY CLUSTERED 
(
	[codoper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgpar](
	[nupar] [int] IDENTITY(1,1) NOT NULL,
	[codpar] [varchar](15) NOT NULL,
	[typval] [varchar](1) NOT NULL,
	[valpar] [varchar](200) NULL,
	[explication] [varchar](100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgpar] ADD  CONSTRAINT [PK_pgpar] PRIMARY KEY CLUSTERED 
(
	[nupar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgper](
	[nuper] [int] NULL,
	[noper] [varchar](35) NULL,
	[nbjr] [int] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgqual](
	[codqual] [varchar](2) NOT NULL,
	[noqual] [varchar](50) NULL,
	[sain] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgqual] ADD  CONSTRAINT [PK_pgqual_1] PRIMARY KEY CLUSTERED 
(
	[codqual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgsuivimajtble](
	[numajtble] [int] IDENTITY(1,1) NOT NULL,
	[codetble] [varchar](50) NULL,
	[dtmaj] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgsuivimajtble] ADD  CONSTRAINT [PK_pgsuivimajtble] PRIMARY KEY CLUSTERED 
(
	[numajtble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgtrancpt](
	[idtranscpt] [int] IDENTITY(1,1) NOT NULL,
	[codoper] [varchar](3) NOT NULL,
	[codtrans] [varchar](6) NOT NULL,
	[notrans] [varchar](50) NOT NULL,
	[intcred] [int] NULL,
	[nunbjr] [int] NULL,
	[dtval] [int] NULL,
	[sendtval] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pgtrancpt] ADD  CONSTRAINT [PK_pgtrancpt] PRIMARY KEY CLUSTERED 
(
	[idtranscpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'30 veut dire fin de mois si sens est + et debut si sens est -' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pgtrancpt', @level2type=N'COLUMN',@level2name=N'dtval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Les valeurs sont + ou -' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pgtrancpt', @level2type=N'COLUMN',@level2name=N'sendtval'
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pgtypmajtble](
	[codetble] [varchar](50) NOT NULL,
	[nomtble] [varchar](100) NULL,
	[descriptiontble] [text] NULL,
	[typmaj] [varchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[pgtypmajtble] ADD  CONSTRAINT [PK_typmajtble] PRIMARY KEY CLUSTERED 
(
	[codetble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prdos](
	[iddos] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nunateng] [int] NULL,
	[nudos] [varchar](10) NOT NULL,
	[mtinitdos] [money] NULL,
	[mtrestcap] [money] NULL,
	[cumint] [money] NULL,
	[txtax] [real] NULL,
	[txint] [real] NULL,
	[eta] [varchar](2) NULL,
	[rest] [int] NULL,
	[nunivdec] [int] NULL,
	[nbrechtot] [int] NULL,
	[dtdernech] [date] NULL,
	[dtrest] [date] NULL,
	[typdossier] [varchar](3) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[prdos] ADD  CONSTRAINT [PK_prdos] PRIMARY KEY CLUSTERED 
(
	[iddos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_prdosagecli] ON [dbo].[prdos]
(
	[codagce] ASC,
	[codcli] ASC,
	[nudos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prdostpon](
	[iddos] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[nunateng] [int] NULL,
	[nudos] [varchar](10) NOT NULL,
	[mtinitdos] [money] NULL,
	[mtrestcap] [money] NULL,
	[cumint] [money] NULL,
	[txtax] [real] NULL,
	[txint] [real] NULL,
	[eta] [varchar](2) NULL,
	[rest] [int] NULL,
	[nunivdec] [int] NULL,
	[nbrechtot] [int] NULL,
	[dtdernech] [date] NULL,
	[dtrest] [date] NULL,
	[typdossier] [varchar](3) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[prdostpon] ADD  CONSTRAINT [PK_prdostpon] PRIMARY KEY CLUSTERED 
(
	[iddos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_prdostponagenudos] ON [dbo].[prdostpon]
(
	[codagce] ASC,
	[nudos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prechdos](
	[idechdos] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[nudos] [varchar](10) NOT NULL,
	[codcli] [varchar](20) NULL,
	[nuech] [int] NULL,
	[dtech] [date] NULL,
	[dtimpech] [date] NULL,
	[mtech] [numeric](18, 0) NULL,
	[mtcap] [numeric](18, 0) NULL,
	[mtint] [numeric](18, 0) NULL,
	[mttaxint] [numeric](18, 0) NULL,
	[mtcom] [numeric](18, 0) NULL,
	[mttaxcom] [numeric](18, 0) NULL,
	[mtimpcap] [numeric](18, 0) NULL,
	[mtimpint] [numeric](18, 0) NULL,
	[mttaxintimp] [numeric](18, 0) NULL,
	[mtimpcomm] [numeric](18, 0) NULL,
	[mttaxcommimp] [numeric](18, 0) NULL,
	[sortech] [varchar](1) NULL,
	[dtappech] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[prechdos] ADD  CONSTRAINT [PK_prechdos] PRIMARY KEY CLUSTERED 
(
	[idechdos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_prechdosechagecli] ON [dbo].[prechdos]
(
	[codagce] ASC,
	[codcli] ASC,
	[nudos] ASC,
	[nuech] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prechdostpon](
	[idechdos] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[nudos] [varchar](10) NOT NULL,
	[codcli] [varchar](20) NULL,
	[nuech] [int] NULL,
	[dtech] [date] NULL,
	[dtimpech] [date] NULL,
	[mtech] [numeric](18, 0) NULL,
	[mtcap] [numeric](18, 0) NULL,
	[mtint] [numeric](18, 0) NULL,
	[mttaxint] [numeric](18, 0) NULL,
	[mtcom] [numeric](18, 0) NULL,
	[mttaxcom] [numeric](18, 0) NULL,
	[mtimpcap] [numeric](18, 0) NULL,
	[mtimpint] [numeric](18, 0) NULL,
	[mttaxintimp] [numeric](18, 0) NULL,
	[mtimpcomm] [numeric](18, 0) NULL,
	[mttaxcommimp] [numeric](18, 0) NULL,
	[sortech] [varchar](1) NULL,
	[dtappech] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[prechdostpon] ADD  CONSTRAINT [PK_prechdostpon] PRIMARY KEY CLUSTERED 
(
	[idechdos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_prechdosechageclitpon] ON [dbo].[prechdostpon]
(
	[codagce] ASC,
	[codcli] ASC,
	[nudos] ASC,
	[nuech] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refreshtoken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[valeur] [varchar](300) NULL,
	[creation] [datetime] NULL,
	[expire] [int] NULL,
	[expiration] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[refreshtoken] ADD  CONSTRAINT [PK_refreshtoken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secustrategy](
	[id] [int] NOT NULL,
	[roleid] [int] NULL,
	[password] [varchar](200) NULL,
	[typpassword] [int] NULL,
	[dureepassword] [int] NULL,
	[passwordreuti] [int] NULL,
	[minlengthpassword] [int] NULL,
	[maxlengthusername] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[secustrategy] ADD  CONSTRAINT [PK_secustrategy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shi](
	[codagce] [varchar](6) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[sde] [money] NULL,
	[shi] [money] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stat_decByAtt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[attribcli] [varchar](6) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stat_decByAtt] ADD  CONSTRAINT [PK_stat2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stat_decByReg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noreg] [varchar](35) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stat_decByReg] ADD  CONSTRAINT [PK_stat1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stat_decNumberByAgce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stat_decNumberByAgce] ADD  CONSTRAINT [PK_stat4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stat_depByMonth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[annee] [varchar](4) NOT NULL,
	[mois] [varchar](2) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stat_depByMonth] ADD  CONSTRAINT [PK_stat3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statdecByAtt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[attribcli] [varchar](50) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[statdecByAtt] ADD  CONSTRAINT [PK_stat02] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statdecByReg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noreg] [varchar](35) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[statdecByReg] ADD  CONSTRAINT [PK_stat01] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statdecNumberByAgce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[nbre] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[statdecNumberByAgce] ADD  CONSTRAINT [PK_stat04] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statdepByMonth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[annee] [varchar](4) NOT NULL,
	[mois] [varchar](2) NOT NULL,
	[depint] [money] NULL,
	[depcap] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[statdepByMonth] ADD  CONSTRAINT [PK_stat03] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tclicli](
	[idtcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nocli] [varchar](50) NOT NULL,
	[precli] [varchar](60) NOT NULL,
	[codregdu] [varchar](2) NOT NULL,
	[codqua] [varchar](2) NULL,
	[dtch] [varchar](8) NULL,
	[etach] [varchar](2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclicli] ADD  CONSTRAINT [PK_tclicli] PRIMARY KEY CLUSTERED 
(
	[idtcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tclicpt](
	[idcptcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NULL,
	[chap] [varchar](10) NULL,
	[cpt] [varchar](12) NULL,
	[de] [varchar](3) NULL,
	[soldcpt] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tclicpt] ADD  CONSTRAINT [PK_tclicpt] PRIMARY KEY CLUSTERED 
(
	[idcptcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terrch](
	[idterrch] [int] IDENTITY(1,1) NOT NULL,
	[notb] [varchar](25) NOT NULL,
	[ligne] [text] NOT NULL,
	[nulign] [int] NOT NULL,
	[dtch] [varchar](8) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[terrch] ADD  CONSTRAINT [PK_terrch] PRIMARY KEY CLUSTERED 
(
	[idterrch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terrchstat](
	[idterrchstat] [int] IDENTITY(1,1) NOT NULL,
	[notb] [varchar](25) NOT NULL,
	[nbatrait] [int] NOT NULL,
	[nbtrait] [int] NOT NULL,
	[dttrait] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[terrchstat] ADD  CONSTRAINT [PK_terrchstat] PRIMARY KEY CLUSTERED 
(
	[idterrchstat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utipconnect](
	[nuuti] [int] IDENTITY(1,1) NOT NULL,
	[coduti] [varchar](15) NOT NULL,
	[nouti] [varchar](40) NOT NULL,
	[prenouti] [varchar](100) NULL,
	[loginuti] [varchar](50) NULL,
	[passwduti] [varchar](100) NULL,
	[useconnect] [int] NULL,
	[usedeconnect] [int] NULL,
	[codagce] [varchar](5) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[utipconnect] ADD  CONSTRAINT [PK_utipconnect] PRIMARY KEY CLUSTERED 
(
	[nuuti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utipconnect_utirole](
	[nuuti] [int] NOT NULL,
	[nuutirole] [int] NOT NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utirole](
	[nuutirole] [int] IDENTITY(1,1) NOT NULL,
	[codrole] [varchar](2) NOT NULL,
	[norole] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[utirole] ADD  CONSTRAINT [PK_utirole] PRIMARY KEY CLUSTERED 
(
	[nuutirole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utiroles](
	[nuutiutirole] [int] IDENTITY(1,1) NOT NULL,
	[nuuti] [int] NOT NULL,
	[nuutirole] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[utiroles] ADD  CONSTRAINT [PK_utiroles] PRIMARY KEY CLUSTERED 
(
	[nuutiutirole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[INPUT_CCO]
AS  
declare   
@vdatecpt  DATE,  
@vdatecpt90  DATE,  
@vdatecpt180  DATE 

  
SET LANGUAGE FRENCH  
  
SELECT @vdatecpt=cast(GLOBAL_DATTRAIT as date) FROM BB..param_glob WHERE GLOBAL_CODE_EXERC_EN_COURS=1  
SET @vdatecpt90=DATEADD(DAY,-90,@vdatecpt)  
SET @vdatecpt180=DATEADD(DAY,-180,@vdatecpt)  

DELETE FROM climvt
/*Solde il ya 180 jours*/
INSERT INTO climvt 
SELECT v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE,@vdatecpt180,SUM(ecrcpt_montant) ecrcpt_montant,'C'
FROM BB..vue_mouvement v,BB..cpte_auxil a WHERE v.ECRCPT_NUMCPTE =a.CPTEAUXIL_NUMCPT AND LOT_DATE <=@vdatecpt180
AND cpteauxil_solde_dispo<0  AND ECRCPT_SENS ='C' and  substring(CPTEAUXIL_CPTGEN_ASSOC,3,4) in ('2511') AND CPTEAUXIL_DAT_FERMETURE IS NULL  
GROUP BY v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE

INSERT INTO climvt 
SELECT v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE,@vdatecpt180,SUM(ecrcpt_montant) ecrcpt_montant,'D'
FROM BB..vue_mouvement v,BB..cpte_auxil a WHERE v.ECRCPT_NUMCPTE =a.CPTEAUXIL_NUMCPT AND LOT_DATE <=@vdatecpt180
AND cpteauxil_solde_dispo<0  AND ECRCPT_SENS ='D' and  substring(CPTEAUXIL_CPTGEN_ASSOC,3,4) in ('2511') AND CPTEAUXIL_DAT_FERMETURE IS NULL  
GROUP BY v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE

INSERT INTO climvt 
SELECT v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE,v.LOT_DATE , ecrcpt_montant,ecrcpt_sens
FROM BB..vue_mouvement v,BB..cpte_auxil a WHERE v.ECRCPT_NUMCPTE =a.CPTEAUXIL_NUMCPT AND LOT_DATE > @vdatecpt180
AND cpteauxil_solde_dispo<0 and  substring(CPTEAUXIL_CPTGEN_ASSOC,3,4) in ('2511') AND CPTEAUXIL_DAT_FERMETURE IS NULL  

DELETE FROM climvtagios

INSERT INTO climvtagios 
SELECT v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE,@vdatecpt180,SUM(ecrcpt_montant) ecrcpt_montant,'C'
FROM BB..vue_mouvement v,BB..cpte_auxil a WHERE v.ECRCPT_NUMCPTE =a.CPTEAUXIL_NUMCPT AND LOT_DATE <=@vdatecpt180
AND cpteauxil_solde_dispo<0  AND ECRCPT_SENS ='C' and  substring(CPTEAUXIL_CPTGEN_ASSOC,3,4) in ('2511') AND CPTEAUXIL_DAT_FERMETURE IS NULL  
AND SCHEMA_CODE='ARR20' 
GROUP BY v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE

INSERT INTO climvtagios 
SELECT v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE,@vdatecpt180,SUM(ecrcpt_montant) ecrcpt_montant,'D'
FROM BB..vue_mouvement v,BB..cpte_auxil a WHERE v.ECRCPT_NUMCPTE =a.CPTEAUXIL_NUMCPT AND LOT_DATE <=@vdatecpt180
AND cpteauxil_solde_dispo<0  AND ECRCPT_SENS ='C' and  substring(CPTEAUXIL_CPTGEN_ASSOC,3,4) in ('2511') AND CPTEAUXIL_DAT_FERMETURE IS NULL  
AND SCHEMA_CODE='ARR20' 
GROUP BY v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE

INSERT INTO climvtagios 
SELECT v.agence_code,a.ETCIV_MATRICULE,v.ECRCPT_NUMCPTE,v.DEVISE_CODE,v.LOT_DATE, ecrcpt_montant,ecrcpt_sens
FROM BB..vue_mouvement v,BB..cpte_auxil a WHERE v.ECRCPT_NUMCPTE =a.CPTEAUXIL_NUMCPT AND LOT_DATE > @vdatecpt180
AND cpteauxil_solde_dispo<0 and  substring(CPTEAUXIL_CPTGEN_ASSOC,3,4) in ('2511') AND CPTEAUXIL_DAT_FERMETURE IS NULL 
AND SCHEMA_CODE='ARR20' 
GO
