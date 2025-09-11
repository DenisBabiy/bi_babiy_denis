create table [md_bi].[SKUAdditionalInfo] (
	[ID] int not null,
	[ID_bi_BusinessUnit] int not null,
	[MDT_DateCreate] datetime not null,
	[MDT_FlagActive] bit not null,
	[MDT_DateDeleted] datetime null,
	constraint [PK_SKUAdditionalInfo] primary key clustered ([ID] asc) with (STATISTICS_NORECOMPUTE = ON),
	constraint [FK_SKUAdditionalInfo_ID_bi_BusinessUnit_BusinessUnit] foreign key ([ID_bi_BusinessUnit]) references [bi].[BusinessUnit] ([ID]) on delete no action on update no action
);