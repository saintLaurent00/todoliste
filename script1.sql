




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


