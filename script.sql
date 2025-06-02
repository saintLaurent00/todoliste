




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agce](
	[codagce] [varchar](6) NOT NULL,
	[noagce] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[agce] ADD  CONSTRAINT [PK_agce] PRIMARY KEY CLUSTERED 
(
	[codagce] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approle](
	[coderole] [varchar](15) NOT NULL,
	[norole] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[approle] ADD  CONSTRAINT [PK_approle] PRIMARY KEY CLUSTERED 
(
	[coderole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appuser](
	[codeuser] [varchar](15) NOT NULL,
	[nouser] [varchar](50) NOT NULL,
	[passwd] [varchar](100) NULL,
	[coderole] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[appuser] ADD  CONSTRAINT [PK_appuser] PRIMARY KEY CLUSTERED 
(
	[codeuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appuser_approle](
	[AppUser_codeuser] [varchar](15) NOT NULL,
	[appRoles_coderole] [varchar](15) NOT NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkcom](
	[bkcompi] [int] IDENTITY(1,1) NOT NULL,
	[ncp] [varchar](12) NOT NULL,
	[suf] [varchar](2) NULL,
	[age] [varchar](5) NOT NULL,
	[dev] [varchar](3) NOT NULL,
	[cha] [varchar](10) NOT NULL,
	[clc] [varchar](2) NOT NULL,
	[cli] [varchar](15) NOT NULL,
	[inti] [varchar](30) NOT NULL,
	[ser] [varchar](4) NULL,
	[sbi] [varchar](1) NULL,
	[crb] [varchar](1) NULL,
	[typ] [varchar](3) NULL,
	[arr] [varchar](1) NULL,
	[ech] [varchar](1) NULL,
	[ext] [varchar](1) NULL,
	[tax] [varchar](1) NULL,
	[cver] [varchar](1) NULL,
	[ife] [varchar](1) NULL,
	[psbf] [decimal](12, 0) NULL,
	[seui] [decimal](4, 0) NULL,
	[cfe] [varchar](1) NULL,
	[dou] [date] NULL,
	[dmo] [date] NULL,
	[dif] [date] NULL,
	[dfe] [date] NULL,
	[ord] [decimal](4, 0) NULL,
	[prlib] [decimal](1, 0) NULL,
	[sde] [decimal](19, 4) NULL,
	[sva] [decimal](19, 4) NULL,
	[dva] [date] NULL,
	[shi] [decimal](19, 4) NULL,
	[dhi] [date] NULL,
	[sar] [decimal](19, 4) NULL,
	[dar] [date] NULL,
	[sin] [decimal](19, 4) NULL,
	[mind] [decimal](19, 4) NULL,
	[minds] [decimal](19, 4) NULL,
	[minj] [decimal](19, 4) NULL,
	[minjs] [decimal](19, 4) NULL,
	[dbt] [decimal](19, 4) NULL,
	[crt] [decimal](19, 4) NULL,
	[ddm] [date] NULL,
	[ddc] [date] NULL,
	[ddd] [date] NULL,
	[uti] [varchar](10) NULL,
	[parrd] [varchar](1) NULL,
	[ctx] [varchar](1) NULL,
	[fus_age] [varchar](5) NULL,
	[fus_dev] [varchar](3) NULL,
	[fus_cha] [varchar](10) NULL,
	[fus_ncp] [varchar](12) NULL,
	[fus_suf] [varchar](2) NULL,
	[parrc] [varchar](1) NULL,
	[cpl] [varchar](2) NULL,
	[ddl] [date] NULL,
	[aut1] [decimal](19, 4) NULL,
	[eca1] [date] NULL,
	[dodb2] [date] NULL,
	[daut2] [date] NULL,
	[ecd] [date] NULL,
	[catr] [varchar](1) NULL,
	[dodb] [date] NULL,
	[daut] [date] NULL,
	[ribdec] [varchar](2) NULL,
	[cpro] [varchar](3) NULL,
	[dech] [date] NULL,
	[nanti] [varchar](1) NULL,
	[mdchq] [varchar](1) NULL,
	[tychq] [varchar](1) NULL,
	[agchq] [varchar](5) NULL,
	[motclo] [varchar](3) NULL,
	[utic] [varchar](10) NULL,
	[utif] [varchar](10) NULL,
	[utife] [varchar](10) NULL,
	[agecre] [varchar](5) NULL,
	[agerib] [varchar](5) NULL,
	[dernage] [varchar](5) NULL,
	[tadch] [varchar](1) NULL,
	[codadch] [varchar](2) NULL,
	[cleiban] [varchar](2) NULL,
	[ouvp] [varchar](1) NULL,
	[cpack] [varchar](6) NULL,
	[mtfdr] [decimal](19, 4) NULL,
	[mntl2] [decimal](19, 4) NULL,
	[datl1] [date] NULL,
	[datl2] [date] NULL,
	[extd] [varchar](10) NULL,
	[zonl2] [varchar](10) NULL,
	[zonl3] [varchar](10) NULL,
	[derndev] [varchar](3) NULL,
	[datdev] [date] NULL,
	[cptcoj] [varchar](1) NULL,
	[clir] [varchar](15) NULL,
	[lib] [varchar](2) NULL,
	[shi_ta] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bkcom] ADD  CONSTRAINT [pk_bkcompi] PRIMARY KEY CLUSTERED 
(
	[bkcompi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkmvti](
	[numvti] [int] IDENTITY(1,1) NOT NULL,
	[AGE] [varchar](5) NOT NULL,
	[DEV] [varchar](3) NOT NULL,
	[CHA] [varchar](10) NOT NULL,
	[NCP] [varchar](12) NOT NULL,
	[SUF] [varchar](2) NULL,
	[OPE] [varchar](3) NOT NULL,
	[MVTI] [varchar](6) NOT NULL,
	[RGP] [varchar](3) NULL,
	[UTI] [varchar](10) NOT NULL,
	[EVE] [varchar](6) NOT NULL,
	[CLC] [varchar](2) NULL,
	[DCO] [date] NOT NULL,
	[SER] [varchar](4) NULL,
	[DVA] [date] NOT NULL,
	[MON] [decimal](19, 4) NOT NULL,
	[SEN] [varchar](1) NOT NULL,
	[LIB] [varchar](30) NOT NULL,
	[EXO] [varchar](1) NOT NULL,
	[PIE] [varchar](11) NOT NULL,
	[RLET] [varchar](8) NULL,
	[DES1] [varchar](4) NULL,
	[DES2] [varchar](4) NULL,
	[DES3] [varchar](4) NULL,
	[DES4] [varchar](4) NULL,
	[DES5] [varchar](4) NULL,
	[UTF] [varchar](10) NULL,
	[UTA] [varchar](10) NULL,
	[TAU] [decimal](15, 7) NULL,
	[DIN] [date] NULL,
	[TPR] [varchar](1) NULL,
	[NPR] [decimal](12, 0) NULL,
	[NCC] [varchar](11) NULL,
	[SUC] [varchar](2) NULL,
	[ESI] [varchar](1) NULL,
	[IMP] [varchar](1) NULL,
	[CTA] [varchar](1) NULL,
	[MAR] [varchar](1) NULL,
	[DECH] [date] NULL,
	[AGSA] [varchar](5) NULL,
	[AGEM] [varchar](5) NULL,
	[AGDE] [varchar](5) NULL,
	[DEVC] [varchar](3) NULL,
	[MCTV] [decimal](19, 4) NULL,
	[PIEO] [varchar](11) NULL,
	[IDEN] [varchar](6) NULL,
	[NOSEQ] [int] NULL,
	[LANG] [varchar](3) NULL,
	[LIBNLS] [varchar](30) NULL,
	[MODU] [varchar](3) NOT NULL,
	[REFDOS] [varchar](50) NULL,
	[REFANA] [varchar](25) NULL,
	[LABEL] [varchar](25) NULL,
	[NAT] [varchar](6) NULL,
	[ETA] [varchar](2) NULL,
	[SCHEMAA] [varchar](10) NULL,
	[CETICPT] [varchar](10) NULL,
	[DESTANA] [varchar](30) NULL,
	[FUSION] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bkmvti] ADD  CONSTRAINT [PK_mvti] PRIMARY KEY CLUSTERED 
(
	[numvti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bkoppcli](
	[cli] [varchar](15) NOT NULL,
	[opp] [varchar](2) NOT NULL,
	[nuoppcli] [int] IDENTITY(1,1) NOT NULL,
	[ddeb] [date] NOT NULL,
	[dfin] [date] NULL,
	[dlev] [date] NULL,
	[motifl] [varchar](40) NULL,
	[utl] [varchar](10) NULL,
	[eta] [varchar](1) NOT NULL,
	[uti] [varchar](10) NOT NULL,
	[dou] [date] NOT NULL,
	[atrf] [varchar](1) NULL,
	[motifo] [varchar](40) NOT NULL,
	[action] [varchar](1) NOT NULL,
	[age] [varchar](5) NOT NULL,
	[valider] [varchar](1) NULL,
	[exporter] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bkoppcli] ADD  CONSTRAINT [PK_bkoppcli] PRIMARY KEY CLUSTERED 
(
	[nuoppcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdavedos](
	[idavedos] [int] IDENTITY(1,1) NOT NULL,
	[codage] [varchar](6) NULL,
	[nudos] [varchar](10) NULL,
	[nuave] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdavedos] ADD  CONSTRAINT [PK_avedos] PRIMARY KEY CLUSTERED 
(
	[idavedos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdcdechdos](
	[idcdechdos] [int] NOT NULL,
	[codagce] [varchar](6) NULL,
	[nudos] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[nuech] [int] NULL,
	[dtech] [date] NULL,
	[dteimpech] [date] NULL,
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
	[dtepyech] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdcdechdos] ADD  CONSTRAINT [PK_cdechdos] PRIMARY KEY CLUSTERED 
(
	[idcdechdos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdchapdec](
	[nucdchap] [int] IDENTITY(1,1) NOT NULL,
	[nunivdec] [int] NULL,
	[chapav] [varchar](10) NULL,
	[chapap] [varchar](10) NULL,
	[chapdep] [varchar](10) NULL,
	[interet] [int] NULL,
	[chapdepint] [varchar](10) NULL,
	[chapavrest] [varchar](10) NULL,
	[cptctrp] [varchar](12) NULL,
	[cptctrprep] [varchar](12) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdchapdec] ADD  CONSTRAINT [PK_cdchapdec] PRIMARY KEY CLUSTERED 
(
	[nucdchap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdchapdectpon](
	[nucdchap] [int] IDENTITY(1,1) NOT NULL,
	[nunivdec] [int] NULL,
	[chapav] [varchar](10) NULL,
	[chapap] [varchar](10) NULL,
	[chapdep] [varchar](10) NULL,
	[interet] [int] NULL,
	[chapdepint] [varchar](10) NULL,
	[chapavrest] [varchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdchapdectpon] ADD  CONSTRAINT [PK_cdchapdectpon] PRIMARY KEY CLUSTERED 
(
	[nucdchap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdcodevalid](
	[nuvaliddec] [int] IDENTITY(1,1) NOT NULL,
	[nunivdecreg] [int] NOT NULL,
	[codevalide] [varchar](3) NOT NULL,
	[nomvalidation] [varchar](30) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdcodevalid] ADD  CONSTRAINT [PK_cdcodevalid] PRIMARY KEY CLUSTERED 
(
	[nuvaliddec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdcouvdep](
	[nucouvdep] [int] IDENTITY(1,1) NOT NULL,
	[etat] [int] NULL,
	[ophac] [int] NULL,
	[rest] [int] NULL,
	[du] [int] NULL,
	[pourccouv] [int] NULL,
	[pourcncouv] [int] NULL,
	[unite] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdcouvdep] ADD  CONSTRAINT [PK_cdcouvdep] PRIMARY KEY CLUSTERED 
(
	[nucouvdep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cddec](
	[nudec] [int] IDENTITY(1,1) NOT NULL,
	[nunivdec] [int] NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nudoseng] [varchar](15) NULL,
	[dtdec] [date] NULL,
	[du] [int] NULL,
	[nunatdec] [int] NULL,
	[cpt] [varchar](12) NULL,
	[cpt1] [varchar](12) NULL,
	[cpt2] [varchar](12) NULL,
	[cpt3] [varchar](12) NULL,
	[cpt4] [varchar](12) NULL,
	[cpt5] [varchar](12) NULL,
	[cpt6] [varchar](12) NULL,
	[solddeccpt] [money] NULL,
	[solddeccpt1] [money] NULL,
	[solddeccpt2] [money] NULL,
	[solddeccpt3] [money] NULL,
	[solddeccpt4] [money] NULL,
	[solddeccpt5] [money] NULL,
	[solddeccpt6] [money] NULL,
	[chapnivpreccpt] [varchar](10) NULL,
	[chapnivpreccpt1] [varchar](10) NULL,
	[chapnivpreccpt2] [varchar](10) NULL,
	[chapnivpreccpt3] [varchar](10) NULL,
	[chapnivpreccpt4] [varchar](10) NULL,
	[chapnivpreccpt5] [varchar](10) NULL,
	[chapnivpreccpt6] [varchar](10) NULL,
	[chapdeccpt] [varchar](10) NULL,
	[chapdeccpt1] [varchar](10) NULL,
	[chapdeccpt2] [varchar](10) NULL,
	[chapdeccpt3] [varchar](10) NULL,
	[chapdeccpt4] [varchar](10) NULL,
	[chapdeccpt5] [varchar](10) NULL,
	[chapdeccpt6] [varchar](10) NULL,
	[codqua] [varchar](2) NULL,
	[eta] [varchar](2) NULL,
	[dtancechdec] [date] NULL,
	[nudosengorig] [varchar](15) NULL,
	[mod] [varchar](1) NULL,
	[compt] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddec] ADD  CONSTRAINT [PK_cddec] PRIMARY KEY CLUSTERED 
(
	[nudec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_cddecdossier] ON [dbo].[cddec]
(
	[codagce] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [id_nivdecdossier] ON [dbo].[cddec]
(
	[codagce] ASC,
	[nunivdec] ASC,
	[nudoseng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddec] ADD  CONSTRAINT [DF_cddec_compt]  DEFAULT ((0)) FOR [compt]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cddecman](
	[nudecman] [int] NOT NULL,
	[nunivdec] [int] NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nudoseng] [varchar](15) NULL,
	[dtdec] [date] NULL,
	[du] [int] NULL,
	[nunatdec] [int] NULL,
	[cpt] [varchar](12) NULL,
	[cpt1] [varchar](12) NULL,
	[cpt2] [varchar](12) NULL,
	[cpt3] [varchar](12) NULL,
	[cpt4] [varchar](12) NULL,
	[cpt5] [varchar](12) NULL,
	[cpt6] [varchar](12) NULL,
	[solddeccpt] [money] NULL,
	[solddeccpt1] [money] NULL,
	[solddeccpt2] [money] NULL,
	[solddeccpt3] [money] NULL,
	[solddeccpt4] [money] NULL,
	[solddeccpt5] [money] NULL,
	[solddeccpt6] [money] NULL,
	[chapnivpreccpt] [varchar](10) NULL,
	[chapnivpreccpt1] [varchar](10) NULL,
	[chapnivpreccpt2] [varchar](10) NULL,
	[chapnivpreccpt3] [varchar](10) NULL,
	[chapnivpreccpt4] [varchar](10) NULL,
	[chapnivpreccpt5] [varchar](10) NULL,
	[chapnivpreccpt6] [varchar](10) NULL,
	[chapdeccpt] [varchar](10) NULL,
	[chapdeccpt1] [varchar](10) NULL,
	[chapdeccpt2] [varchar](10) NULL,
	[chapdeccpt3] [varchar](10) NULL,
	[chapdeccpt4] [varchar](10) NULL,
	[chapdeccpt5] [varchar](10) NULL,
	[chapdeccpt6] [varchar](10) NULL,
	[codqua] [varchar](2) NULL,
	[eta] [varchar](2) NULL,
	[dtancechdec] [date] NULL,
	[nudosengorig] [varchar](15) NULL,
	[mod] [varchar](1) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddecman] ADD  CONSTRAINT [PK_cddecman] PRIMARY KEY CLUSTERED 
(
	[nudecman] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cddecres](
	[nudec] [int] NOT NULL,
	[nonivdec] [varchar](50) NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nudoseng] [varchar](15) NULL,
	[dtdec] [date] NULL,
	[du] [int] NULL,
	[nonatdec] [varchar](50) NULL,
	[cpt] [varchar](12) NULL,
	[cpt1] [varchar](12) NULL,
	[cpt2] [varchar](12) NULL,
	[cpt3] [varchar](12) NULL,
	[cpt4] [varchar](12) NULL,
	[cpt5] [varchar](12) NULL,
	[cpt6] [varchar](12) NULL,
	[solddeccpt] [money] NULL,
	[solddeccpt1] [money] NULL,
	[solddeccpt2] [money] NULL,
	[solddeccpt3] [money] NULL,
	[solddeccpt4] [money] NULL,
	[solddeccpt5] [money] NULL,
	[solddeccpt6] [money] NULL,
	[chapnivpreccpt] [varchar](10) NULL,
	[chapnivpreccpt1] [varchar](10) NULL,
	[chapnivpreccpt2] [varchar](10) NULL,
	[chapnivpreccpt3] [varchar](10) NULL,
	[chapnivpreccpt4] [varchar](10) NULL,
	[chapnivpreccpt5] [varchar](10) NULL,
	[chapnivpreccpt6] [varchar](10) NULL,
	[chapdeccpt] [varchar](10) NULL,
	[chapdeccpt1] [varchar](10) NULL,
	[chapdeccpt2] [varchar](10) NULL,
	[chapdeccpt3] [varchar](10) NULL,
	[chapdeccpt4] [varchar](10) NULL,
	[chapdeccpt5] [varchar](10) NULL,
	[chapdeccpt6] [varchar](10) NULL,
	[dtancechdec] [date] NULL,
	[nudosengorig] [varchar](15) NULL,
	[mod] [varchar](1) NULL,
	[depcap] [money] NULL,
	[depint] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddecres] ADD  CONSTRAINT [PK_cddecres] PRIMARY KEY CLUSTERED 
(
	[nudec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cddep](
	[nudep] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[nudec] [int] NOT NULL,
	[dtdep] [date] NULL,
	[nudoseng] [varchar](15) NULL,
	[pourccouv] [int] NULL,
	[pourcncouv] [int] NULL,
	[nucouvdep] [int] NULL,
	[mtcouv] [money] NULL,
	[mtncouv] [money] NULL,
	[cumulsouffcap] [money] NULL,
	[cumulsouffintcomm] [money] NULL,
	[depcap] [money] NULL,
	[depint] [money] NULL,
	[cptdepcap] [varchar](12) NULL,
	[cptdepintomm] [varchar](12) NULL,
	[chapdepcap] [varchar](10) NULL,
	[chapdepintcomm] [varchar](10) NULL,
	[cptctrpcap] [varchar](12) NULL,
	[cptctrprepcap] [varchar](12) NULL,
	[cptctrpint] [varchar](12) NULL,
	[cptctrprepint] [varchar](12) NULL,
	[rep] [int] NULL,
	[dtrepdep] [date] NULL,
	[nudeprep] [int] NULL,
	[mtdeprepcap] [money] NULL,
	[mtdeprepintcomm] [money] NULL,
	[reg] [varchar](1) NULL,
	[compt] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddep] ADD  CONSTRAINT [PK_cddep] PRIMARY KEY CLUSTERED 
(
	[nudep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cddepfac](
	[nudepfac] [int] NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NULL,
	[nudec] [int] NOT NULL,
	[dtdep] [date] NULL,
	[nudoseng] [varchar](15) NULL,
	[dep] [money] NULL,
	[cptdec] [varchar](12) NULL,
	[interet] [int] NULL,
	[chapdep] [varchar](10) NULL,
	[chapdec] [varchar](10) NULL,
	[chaporig] [varchar](10) NULL,
	[solddeccpt] [money] NULL,
	[rep] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddepfac] ADD  CONSTRAINT [PK_cddepfac] PRIMARY KEY CLUSTERED 
(
	[nudepfac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cddepfac] ADD  DEFAULT ((0)) FOR [rep]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdnatdec](
	[nunatdec] [int] IDENTITY(1,1) NOT NULL,
	[codnatdec] [varchar](2) NULL,
	[nonatdec] [varchar](150) NULL,
	[rgledec] [int] NULL,
	[ctgion] [int] NULL,
	[ie] [int] NULL,
	[cd] [int] NULL,
	[cp] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdnatdec] ADD  CONSTRAINT [PK_cdnatdec] PRIMARY KEY CLUSTERED 
(
	[nunatdec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdnivdec](
	[nunivdec] [int] NOT NULL,
	[nonivdec] [varchar](45) NULL,
	[codregdu] [varchar](2) NULL,
	[du] [int] NULL,
	[codqua] [varchar](2) NULL,
	[cdl] [int] NULL,
	[mf] [int] NULL,
	[saindef] [int] NULL,
	[irr] [int] NULL,
	[orduree] [int] NULL,
	[codnivdec] [varchar](2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdnivdec] ADD  CONSTRAINT [PK_cdnivdec] PRIMARY KEY CLUSTERED 
(
	[nunivdec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdniveaudec](
	[nunivdecreg] [int] IDENTITY(1,1) NOT NULL,
	[nunivdec] [int] NULL,
	[codnivdec] [varchar](2) NULL,
	[nonivdec] [varchar](50) NULL,
	[ordec] [int] NULL,
	[mf] [int] NULL,
	[cdl] [int] NULL,
	[irr] [int] NULL,
	[saindef] [int] NULL,
	[unite] [int] NULL,
	[codqua] [varchar](2) NULL,
	[rest] [int] NULL,
	[DTREF] [varchar](10) NULL,
	[codopp] [varchar](2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdniveaudec] ADD  CONSTRAINT [PK_cdniveaudec] PRIMARY KEY CLUSTERED 
(
	[nunivdecreg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdniveauregregcli](
	[nuniveaudecregcli] [int] IDENTITY(1,1) NOT NULL,
	[nunivdecreg] [int] NULL,
	[codreg] [varchar](2) NULL,
	[du] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdniveauregregcli] ADD  CONSTRAINT [PK_cdniveauregregcli] PRIMARY KEY CLUSTERED 
(
	[nuniveaudecregcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdnivnatdec](
	[nunivnat] [int] IDENTITY(1,1) NOT NULL,
	[nunivdecreg] [int] NOT NULL,
	[nunatdec] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdnivnatdec] ADD  CONSTRAINT [PK_cdnivnatdec] PRIMARY KEY CLUSTERED 
(
	[nunivnat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdperte](
	[nudeperte] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[nudoseng] [varchar](15) NOT NULL,
	[dtdeppert] [date] NOT NULL,
	[montpert] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdperte] ADD  CONSTRAINT [PK_cdperte] PRIMARY KEY CLUSTERED 
(
	[nudeperte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdregcli](
	[codreg] [varchar](2) NOT NULL,
	[noreg] [varchar](35) NOT NULL,
	[ctgion] [int] NULL,
	[etat] [int] NOT NULL,
	[ophac] [int] NOT NULL,
	[clidet] [int] NULL,
	[pmepmi] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[cdregcli] ADD  CONSTRAINT [PK_cdregcli] PRIMARY KEY CLUSTERED 
(
	[codreg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdsoldcptdep](
	[nudepcpt] [int] IDENTITY(1,1) NOT NULL,
	[nudep] [int] NULL,
	[codagce] [varchar](6) NOT NULL,
	[cpt] [varchar](12) NOT NULL,
	[interet] [int] NOT NULL,
	[dtdep] [date] NOT NULL,
	[mt] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdsoldcptdep] ADD  CONSTRAINT [PK_cdcptdep] PRIMARY KEY CLUSTERED 
(
	[nudepcpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE UNIQUE NONCLUSTERED INDEX [ixcdsoldcptcptdt] ON [dbo].[cdsoldcptdep]
(
	[cpt] ASC,
	[codagce] ASC,
	[dtdep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdsortech](
	[codesort] [varchar](2) NOT NULL,
	[dessort] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[cdsortech] ADD  CONSTRAINT [PK_cdsortech] PRIMARY KEY CLUSTERED 
(
	[codesort] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cdtfestime](
	[nutfdur] [int] IDENTITY(1,1) NOT NULL,
	[dtcompt] [date] NULL,
	[notrait] [varchar](50) NULL,
	[dthrdeb] [datetime] NULL,
	[dthrfin] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cdtfestime] ADD  CONSTRAINT [PK_cdtfestime] PRIMARY KEY CLUSTERED 
(
	[nutfdur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliattribcli](
	[nuattribcli] [int] IDENTITY(1,1) NOT NULL,
	[codagce] [varchar](6) NULL,
	[codcli] [varchar](20) NULL,
	[codattrib] [varchar](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliattribcli] ADD  CONSTRAINT [PK_cliattribcli] PRIMARY KEY CLUSTERED 
(
	[nuattribcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliaut](
	[nuautcli] [varchar](10) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[dt] [date] NOT NULL,
	[dtdebeff] [date] NOT NULL,
	[dtfneff] [date] NOT NULL,
	[mt] [money] NOT NULL,
	[cpt] [varchar](12) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[cliaut] ADD  CONSTRAINT [PK_cliaut] PRIMARY KEY CLUSTERED 
(
	[nuautcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [id_autocpte] ON [dbo].[cliaut]
(
	[codcli] ASC,
	[codagce] ASC,
	[cpt] ASC,
	[dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliauttpon](
	[nuautcli] [varchar](9) NOT NULL,
	[codcli] [varchar](20) NOT NULL,
	[codagce] [varchar](6) NOT NULL,
	[dt] [date] NOT NULL,
	[dtdebeff] [date] NOT NULL,
	[dtfneff] [date] NOT NULL,
	[mt] [money] NOT NULL,
	[cpt] [varchar](12) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[cliauttpon] ADD  CONSTRAINT [PK_cliauttpon] PRIMARY KEY CLUSTERED 
(
	[nuautcli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



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
