
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clichapattribcli](
	[nuchapnatcpt] [int] IDENTITY(1,1) NOT NULL,
	[codattrib] [varchar](7) NULL,
	[codnatcpt] [varchar](2) NULL,
	[chapavdec] [varchar](10) NULL,
	[chap] [varchar](10) NULL,
	[cptctrp] [varchar](12) NULL,
	[cptctrprep] [varchar](12) NULL,
	[codeproduit] [varchar](3) NULL,
	[modecreation] [int] NULL,
	[codagce] [varchar](5) NULL,
	[typdossier] [varchar](3) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clichapattribcli] ADD  CONSTRAINT [PK_clichapattribcli] PRIMARY KEY CLUSTERED 
(
	[nuchapnatcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clichapattribclitpon](
	[nuchapnatcpt] [int] IDENTITY(1,1) NOT NULL,
	[codattrib] [varchar](7) NULL,
	[codnatcpt] [varchar](2) NULL,
	[chap] [varchar](10) NULL,
	[cptctrp] [varchar](12) NULL,
	[cptctrprep] [varchar](12) NULL,
	[codeproduit] [varchar](3) NULL,
	[modecreation] [int] NULL,
	[codagce] [varchar](5) NULL,
	[typdossier] [varchar](3) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clichapattribclitpon] ADD  CONSTRAINT [PK_clichapattribclitpon] PRIMARY KEY CLUSTERED 
(
	[nuchapnatcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clicli](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nocli] [varchar](50) NOT NULL,
	[precli] [varchar](60) NOT NULL,
	[codregdu] [varchar](2) NOT NULL,
	[codqua] [varchar](3) NULL,
	[dtqual] [date] NULL,
	[attribcli] [varchar](6) NULL,
	[dtextract] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clicli] ADD  CONSTRAINT [PK_clicli] PRIMARY KEY CLUSTERED 
(
	[idcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_clicli] ON [dbo].[clicli]
(
	[codagce] ASC,
	[codcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_clicliqua] ON [dbo].[clicli]
(
	[codagce] ASC,
	[codcli] ASC,
	[codqua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliclitpon](
	[idcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nocli] [varchar](50) NOT NULL,
	[precli] [varchar](60) NOT NULL,
	[codregdu] [varchar](2) NOT NULL,
	[codqua] [varchar](2) NULL,
	[dtqual] [date] NULL,
	[attribcli] [varchar](6) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliclitpon] ADD  CONSTRAINT [PK_cliclitpon] PRIMARY KEY CLUSTERED 
(
	[idcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_cliclitpon] ON [dbo].[cliclitpon]
(
	[codagce] ASC,
	[codcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clicpt](
	[idcptcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[chap] [varchar](10) NOT NULL,
	[cpt] [char](12) NULL,
	[de] [varchar](3) NULL,
	[soldcpt] [money] NULL,
	[ribcpt] [varchar](2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clicpt] ADD  CONSTRAINT [PK_clicpt] PRIMARY KEY CLUSTERED 
(
	[idcptcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clicptaexport](
	[idcptcliexp] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NULL,
	[chap] [varchar](10) NULL,
	[cpt] [varchar](12) NULL,
	[de] [varchar](3) NULL,
	[dtcpt] [date] NULL,
	[codnatcpt] [varchar](2) NULL,
	[export] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clicptaexport] ADD  CONSTRAINT [PK_clicptaexport] PRIMARY KEY CLUSTERED 
(
	[idcptcliexp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clicpttpon](
	[idcptcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NULL,
	[chap] [varchar](10) NULL,
	[cpt] [varchar](12) NULL,
	[de] [varchar](3) NULL,
	[soldcpt] [money] NULL,
	[ribcpt] [varchar](2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clicpttpon] ADD  CONSTRAINT [PK_clicpttpon] PRIMARY KEY CLUSTERED 
(
	[idcptcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[climvt](
	[numvt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[de] [varchar](3) NULL,
	[dtcpt] [date] NULL,
	[mont] [money] NULL,
	[sens] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[climvt] ADD  CONSTRAINT [PK_climvt] PRIMARY KEY CLUSTERED 
(
	[numvt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[climvtagios](
	[numvt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[cpt] [varchar](12) NULL,
	[de] [varchar](3) NULL,
	[dtcpt] [date] NULL,
	[mont] [money] NULL,
	[sens] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[climvtagios] ADD  CONSTRAINT [PK_climvtagios] PRIMARY KEY CLUSTERED 
(
	[numvt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_climvtagioscpt] ON [dbo].[climvtagios]
(
	[codagce] ASC,
	[cpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[climvtagiostpon](
	[numvt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[cpt] [varchar](12) NULL,
	[de] [varchar](3) NULL,
	[dtcpt] [date] NULL,
	[mont] [money] NULL,
	[sens] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[climvtagiostpon] ADD  CONSTRAINT [PK_climvtagiostmp] PRIMARY KEY CLUSTERED 
(
	[numvt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [idclimvtagio] ON [dbo].[climvtagiostpon]
(
	[codagce] ASC,
	[codcli] ASC,
	[cpt] ASC,
	[de] ASC,
	[dtcpt] ASC,
	[mont] ASC,
	[sens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[climvttpon](
	[numvt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[de] [varchar](3) NULL,
	[dtcpt] [date] NULL,
	[mont] [money] NULL,
	[sens] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[climvttpon] ADD  CONSTRAINT [PK_climvttpon] PRIMARY KEY CLUSTERED 
(
	[numvt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliqual](
	[codqua] [varchar](2) NOT NULL,
	[desqua] [varchar](35) NOT NULL,
	[sain] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[cliqual] ADD  CONSTRAINT [PK_pgqual] PRIMARY KEY CLUSTERED 
(
	[codqua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clisuiviqual](
	[idsvcliqual] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[codqua] [varchar](2) NULL,
	[dtqual] [date] NULL,
	[origine] [varchar](12) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clisuiviqual] ADD  CONSTRAINT [PK_clisuiviqual] PRIMARY KEY CLUSTERED 
(
	[idsvcliqual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cplattrib](
	[codattrib] [varchar](7) NOT NULL,
	[noattrib] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[cplattrib] ADD  CONSTRAINT [PK_cplattrib] PRIMARY KEY CLUSTERED 
(
	[codattrib] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cptdouble](
	[nb] [int] NULL,
	[newcpt] [varchar](12) NULL
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cptmvtjour](
	[idcptmvt] [int] IDENTITY(1,1) NOT NULL,
	[dtcpt] [date] NULL,
	[codagce] [varchar](5) NULL,
	[cpt] [varchar](12) NULL,
	[codcli] [varchar](20) NULL,
	[mt] [money] NULL,
	[sens] [varchar](1) NULL,
	[chap] [varchar](10) NULL,
	[lib] [varchar](35) NULL,
	[nupiece] [varchar](15) NULL,
	[codoper] [varchar](3) NULL,
	[codtrans] [varchar](6) NULL,
	[coduser] [varchar](8) NULL,
	[trsf] [int] NULL,
	[nudoseng] [varchar](15) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cptmvtjour] ADD  CONSTRAINT [PK_cptmvtcompt] PRIMARY KEY CLUSTERED 
(
	[idcptmvt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[declicpt](
	[idcptcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NULL,
	[chap] [varchar](10) NULL,
	[cpt] [varchar](12) NULL,
	[de] [varchar](3) NULL,
	[soldcpt] [money] NULL
) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egcptdos](
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
ALTER TABLE [dbo].[egcptdos] ADD  CONSTRAINT [PK_engcptdos] PRIMARY KEY CLUSTERED 
(
	[idcptdos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_autocpte] ON [dbo].[egcptdos]
(
	[codagce] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_autocptetyp] ON [dbo].[egcptdos]
(
	[codagce] ASC,
	[nudoseng] ASC,
	[codnatcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egcptdostpon](
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
ALTER TABLE [dbo].[egcptdostpon] ADD  CONSTRAINT [PK_egcptdostpon] PRIMARY KEY CLUSTERED 
(
	[idcptdos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_autocptetpon] ON [dbo].[egcptdostpon]
(
	[codagce] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_autocptetpontyp] ON [dbo].[egcptdostpon]
(
	[codagce] ASC,
	[nudoseng] ASC,
	[codnatcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egengcli](
	[idengdos] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [nchar](10) NULL,
	[codcli] [varchar](20) NULL,
	[nunateng] [int] NULL,
	[nudoseng] [varchar](15) NULL,
	[rest] [int] NULL,
	[eta] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[egengcli] ADD  CONSTRAINT [PK_egengcli] PRIMARY KEY CLUSTERED 
(
	[idengdos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [engdossiercli] ON [dbo].[egengcli]
(
	[codagce] ASC,
	[codcli] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_engdossiernat] ON [dbo].[egengcli]
(
	[codagce] ASC,
	[nudoseng] ASC,
	[nunateng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egmvtcpt](
	[nu] [int] NULL,
	[codagce] [varchar](5) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[dt] [date] NOT NULL,
	[dev] [varchar](3) NULL,
	[mont] [decimal](19, 4) NULL,
	[sens] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [egmvtcpt_idx] ON [dbo].[egmvtcpt]
(
	[nu] ASC,
	[codagce] ASC,
	[cpt] ASC,
	[dev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egmvtcpttrie](
	[codagce] [varchar](5) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[dt] [date] NOT NULL,
	[dev] [varchar](3) NULL,
	[mont] [decimal](19, 4) NULL,
	[sens] [varchar](1) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egnateng](
	[nunateng] [int] IDENTITY(1,1) NOT NULL,
	[nonateng] [varchar](50) NULL,
	[ca] [int] NULL,
	[cu] [int] NULL,
	[cc] [int] NULL,
	[cb] [int] NULL,
	[cd] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[egnateng] ADD  CONSTRAINT [PK_egnateng] PRIMARY KEY CLUSTERED 
(
	[nunateng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egpgdtcpt](
	[global_dattrait] [datetime] NOT NULL
) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egsitucpt](
	[nusitucpt] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[cli] [varchar](15) NULL,
	[cpt] [varchar](12) NOT NULL,
	[dev] [varchar](3) NOT NULL,
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
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [egsitucpt_idx] ON [dbo].[egsitucpt]
(
	[codagce] ASC,
	[cpt] ASC,
	[dev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egsitucpttpon](
	[codagce] [varchar](5) NOT NULL,
	[cli] [varchar](15) NULL,
	[cpt] [varchar](12) NOT NULL,
	[dev] [varchar](3) NOT NULL,
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
CREATE TABLE [dbo].[egsldcpt](
	[nu] [int] NULL,
	[codagce] [varchar](5) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[dev] [varchar](3) NOT NULL,
	[rib] [varchar](2) NULL,
	[solde] [decimal](19, 4) NULL,
	[soldehi] [decimal](19, 4) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[egsldcptinit](
	[codagce] [varchar](5) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[dev] [varchar](3) NOT NULL,
	[rib] [varchar](2) NULL,
	[solde] [decimal](19, 4) NULL,
	[soldehi] [decimal](19, 4) NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[errcddec](
	[nuerrcddec] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nunivdec] [int] NOT NULL,
	[nunatdec] [int] NOT NULL,
	[dtdec] [date] NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[nudoseng] [varchar](15) NOT NULL,
	[errmesssyst] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[errcddec] ADD  CONSTRAINT [PK_errcddec] PRIMARY KEY CLUSTERED 
(
	[nuerrcddec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[errcddep](
	[nuerrcddep] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nudec] [int] NOT NULL,
	[rep] [int] NULL,
	[dtdep] [date] NOT NULL,
	[pourccouv] [int] NULL,
	[pourcncouv] [int] NULL,
	[nucouvdep] [int] NULL,
	[depcap] [int] NULL,
	[depint] [int] NULL,
	[nudoseng] [varchar](15) NOT NULL,
	[errmesssyst] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[errcddep] ADD  CONSTRAINT [PK_errcddep] PRIMARY KEY CLUSTERED 
(
	[nuerrcddep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grcouvenggarel](
	[nugrcouvenggar] [int] IDENTITY(1,1) NOT NULL,
	[nunatgar] [varchar](2) NULL,
	[nonatgar] [varchar](40) NULL,
	[el] [int] NULL,
	[nugar] [int] NULL,
	[codagce] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[mtgar] [money] NULL,
	[nudoseng] [varchar](15) NULL,
	[mtcouv] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[grcouvenggarel] ADD  CONSTRAINT [PK_grcouvenggarel] PRIMARY KEY CLUSTERED 
(
	[nugrcouvenggar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grcouvgareng](
	[idcouveng] [int] IDENTITY(1,1) NOT NULL,
	[nugar] [varchar](6) NOT NULL,
	[nudoseng] [varchar](15) NOT NULL,
	[mtcouv] [money] NULL,
	[codagce] [varchar](6) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[grcouvgareng] ADD  CONSTRAINT [PK_grcouvgareng] PRIMARY KEY CLUSTERED 
(
	[idcouveng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_grcouvgareng] ON [dbo].[grcouvgareng]
(
	[codagce] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grcouvgarengtpon](
	[idcouveng] [int] IDENTITY(1,1) NOT NULL,
	[nugar] [varchar](6) NOT NULL,
	[nudoseng] [varchar](15) NOT NULL,
	[mtcouv] [money] NULL,
	[codagce] [varchar](6) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[grcouvgarengtpon] ADD  CONSTRAINT [PK_grcouvgarengtpon] PRIMARY KEY CLUSTERED 
(
	[idcouveng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_grcouvgarengtpon] ON [dbo].[grcouvgarengtpon]
(
	[codagce] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [idcouvgareng] ON [dbo].[grcouvgarengtpon]
(
	[nugar] ASC,
	[nudoseng] ASC,
	[codagce] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grgarcli](
	[idnugarcli] [int] IDENTITY(1,1) NOT NULL,
	[nugar] [varchar](6) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nunatgar] [varchar](3) NOT NULL,
	[mtgar] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[grgarcli] ADD  CONSTRAINT [PK_grgarcli] PRIMARY KEY CLUSTERED 
(
	[idnugarcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grgarclitpon](
	[idnugarcli] [int] IDENTITY(1,1) NOT NULL,
	[nugar] [varchar](6) NOT NULL,
	[codagce] [varchar](5) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nunatgar] [varchar](3) NOT NULL,
	[mtgar] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[grgarclitpon] ADD  CONSTRAINT [PK_grgarclitpon] PRIMARY KEY CLUSTERED 
(
	[idnugarcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [pigarclinugar] ON [dbo].[grgarclitpon]
(
	[nugar] ASC,
	[codagce] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grnatgar](
	[nunatgar] [varchar](3) NOT NULL,
	[nonatgar] [varchar](60) NULL,
	[el] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[grnatgar] ADD  CONSTRAINT [PK_grnatgar] PRIMARY KEY CLUSTERED 
(
	[nunatgar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grnatgartpon](
	[nunatgar] [varchar](3) NOT NULL,
	[nonatgar] [varchar](60) NULL,
	[el] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[grnatgartpon] ADD  CONSTRAINT [PK_grnatgartpon] PRIMARY KEY CLUSTERED 
(
	[nunatgar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izchapcpt](
	[CHAP] [varchar](10) NOT NULL,
	[PCB] [varchar](1) NULL,
	[ESC] [int] NULL,
	[CCO] [int] NULL,
	[EHB] [int] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[izchapcpt] ADD  CONSTRAINT [PK_izchapcpt] PRIMARY KEY CLUSTERED 
(
	[CHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[izchapcpttpon](
	[CHAP] [varchar](10) NOT NULL,
	[PCB] [varchar](1) NULL,
	[ESC] [int] NULL,
	[CCO] [int] NULL,
	[EHB] [int] NULL,
	[DTEXT] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[izchapcpttpon] ADD  CONSTRAINT [PK_izchapcpttpon] PRIMARY KEY CLUSTERED 
(
	[CHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

