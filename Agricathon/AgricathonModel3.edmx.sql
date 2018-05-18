
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/18/2018 15:49:35
-- Generated from EDMX file: D:\Git\Agricathon\Agricathon\AgricathonModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SectorActivity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActivitySet] DROP CONSTRAINT [FK_SectorActivity];
GO
IF OBJECT_ID(N'[dbo].[FK_ActivityProject_Activity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActivityProject] DROP CONSTRAINT [FK_ActivityProject_Activity];
GO
IF OBJECT_ID(N'[dbo].[FK_ActivityProject_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActivityProject] DROP CONSTRAINT [FK_ActivityProject_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectWebsite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WebsiteSet] DROP CONSTRAINT [FK_ProjectWebsite];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectProvider_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectProvider] DROP CONSTRAINT [FK_ProjectProvider_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectProvider_Provider]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectProvider] DROP CONSTRAINT [FK_ProjectProvider_Provider];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectLegalForm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectSet] DROP CONSTRAINT [FK_ProjectLegalForm];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectSet] DROP CONSTRAINT [FK_ProjectLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectSpecialist_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectSpecialist] DROP CONSTRAINT [FK_ProjectSpecialist_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectSpecialist_Specialist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectSpecialist] DROP CONSTRAINT [FK_ProjectSpecialist_Specialist];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectFinance_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectFinance] DROP CONSTRAINT [FK_ProjectFinance_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectFinance_Finance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProjectFinance] DROP CONSTRAINT [FK_ProjectFinance_Finance];
GO
IF OBJECT_ID(N'[dbo].[FK_ProjectContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContactSet] DROP CONSTRAINT [FK_ProjectContact];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[SectorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SectorSet];
GO
IF OBJECT_ID(N'[dbo].[ProviderSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProviderSet];
GO
IF OBJECT_ID(N'[dbo].[ProjectSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProjectSet];
GO
IF OBJECT_ID(N'[dbo].[LegalFormSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LegalFormSet];
GO
IF OBJECT_ID(N'[dbo].[ActivitySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActivitySet];
GO
IF OBJECT_ID(N'[dbo].[LocationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocationSet];
GO
IF OBJECT_ID(N'[dbo].[WebsiteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WebsiteSet];
GO
IF OBJECT_ID(N'[dbo].[FinanceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FinanceSet];
GO
IF OBJECT_ID(N'[dbo].[SpecialistSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SpecialistSet];
GO
IF OBJECT_ID(N'[dbo].[ContactSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContactSet];
GO
IF OBJECT_ID(N'[dbo].[ActivityProject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActivityProject];
GO
IF OBJECT_ID(N'[dbo].[ProjectProvider]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProjectProvider];
GO
IF OBJECT_ID(N'[dbo].[ProjectSpecialist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProjectSpecialist];
GO
IF OBJECT_ID(N'[dbo].[ProjectFinance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProjectFinance];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'SectorSet'
CREATE TABLE [dbo].[SectorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProviderSet'
CREATE TABLE [dbo].[ProviderSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Project_Id] int  NOT NULL
);
GO

-- Creating table 'ProjectSet'
CREATE TABLE [dbo].[ProjectSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ClosedDate] datetime  NULL,
    [Activity_Id] int  NOT NULL,
    [LegalForm_Id] int  NOT NULL,
    [Location_Id] int  NOT NULL
);
GO

-- Creating table 'LegalFormSet'
CREATE TABLE [dbo].[LegalFormSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActivitySet'
CREATE TABLE [dbo].[ActivitySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Sector_Id] int  NOT NULL
);
GO

-- Creating table 'LocationSet'
CREATE TABLE [dbo].[LocationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'WebsiteSet'
CREATE TABLE [dbo].[WebsiteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [URL] nvarchar(max)  NOT NULL,
    [Project_Id] int  NOT NULL
);
GO

-- Creating table 'FinanceSet'
CREATE TABLE [dbo].[FinanceSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Project_Id] int  NOT NULL
);
GO

-- Creating table 'SpecialistSet'
CREATE TABLE [dbo].[SpecialistSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Project_Id] int  NOT NULL
);
GO

-- Creating table 'ContactSet'
CREATE TABLE [dbo].[ContactSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Project_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'SectorSet'
ALTER TABLE [dbo].[SectorSet]
ADD CONSTRAINT [PK_SectorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProviderSet'
ALTER TABLE [dbo].[ProviderSet]
ADD CONSTRAINT [PK_ProviderSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProjectSet'
ALTER TABLE [dbo].[ProjectSet]
ADD CONSTRAINT [PK_ProjectSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LegalFormSet'
ALTER TABLE [dbo].[LegalFormSet]
ADD CONSTRAINT [PK_LegalFormSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActivitySet'
ALTER TABLE [dbo].[ActivitySet]
ADD CONSTRAINT [PK_ActivitySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LocationSet'
ALTER TABLE [dbo].[LocationSet]
ADD CONSTRAINT [PK_LocationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WebsiteSet'
ALTER TABLE [dbo].[WebsiteSet]
ADD CONSTRAINT [PK_WebsiteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FinanceSet'
ALTER TABLE [dbo].[FinanceSet]
ADD CONSTRAINT [PK_FinanceSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SpecialistSet'
ALTER TABLE [dbo].[SpecialistSet]
ADD CONSTRAINT [PK_SpecialistSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContactSet'
ALTER TABLE [dbo].[ContactSet]
ADD CONSTRAINT [PK_ContactSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Sector_Id] in table 'ActivitySet'
ALTER TABLE [dbo].[ActivitySet]
ADD CONSTRAINT [FK_SectorActivity]
    FOREIGN KEY ([Sector_Id])
    REFERENCES [dbo].[SectorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SectorActivity'
CREATE INDEX [IX_FK_SectorActivity]
ON [dbo].[ActivitySet]
    ([Sector_Id]);
GO

-- Creating foreign key on [Activity_Id] in table 'ProjectSet'
ALTER TABLE [dbo].[ProjectSet]
ADD CONSTRAINT [FK_ActivityProject]
    FOREIGN KEY ([Activity_Id])
    REFERENCES [dbo].[ActivitySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivityProject'
CREATE INDEX [IX_FK_ActivityProject]
ON [dbo].[ProjectSet]
    ([Activity_Id]);
GO

-- Creating foreign key on [Project_Id] in table 'WebsiteSet'
ALTER TABLE [dbo].[WebsiteSet]
ADD CONSTRAINT [FK_ProjectWebsite]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[ProjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectWebsite'
CREATE INDEX [IX_FK_ProjectWebsite]
ON [dbo].[WebsiteSet]
    ([Project_Id]);
GO

-- Creating foreign key on [Project_Id] in table 'ProviderSet'
ALTER TABLE [dbo].[ProviderSet]
ADD CONSTRAINT [FK_ProjectProvider]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[ProjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectProvider'
CREATE INDEX [IX_FK_ProjectProvider]
ON [dbo].[ProviderSet]
    ([Project_Id]);
GO

-- Creating foreign key on [LegalForm_Id] in table 'ProjectSet'
ALTER TABLE [dbo].[ProjectSet]
ADD CONSTRAINT [FK_ProjectLegalForm]
    FOREIGN KEY ([LegalForm_Id])
    REFERENCES [dbo].[LegalFormSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectLegalForm'
CREATE INDEX [IX_FK_ProjectLegalForm]
ON [dbo].[ProjectSet]
    ([LegalForm_Id]);
GO

-- Creating foreign key on [Location_Id] in table 'ProjectSet'
ALTER TABLE [dbo].[ProjectSet]
ADD CONSTRAINT [FK_ProjectLocation]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[LocationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectLocation'
CREATE INDEX [IX_FK_ProjectLocation]
ON [dbo].[ProjectSet]
    ([Location_Id]);
GO

-- Creating foreign key on [Project_Id] in table 'SpecialistSet'
ALTER TABLE [dbo].[SpecialistSet]
ADD CONSTRAINT [FK_ProjectSpecialist]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[ProjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectSpecialist'
CREATE INDEX [IX_FK_ProjectSpecialist]
ON [dbo].[SpecialistSet]
    ([Project_Id]);
GO

-- Creating foreign key on [Project_Id] in table 'FinanceSet'
ALTER TABLE [dbo].[FinanceSet]
ADD CONSTRAINT [FK_ProjectFinance]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[ProjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectFinance'
CREATE INDEX [IX_FK_ProjectFinance]
ON [dbo].[FinanceSet]
    ([Project_Id]);
GO

-- Creating foreign key on [Project_Id] in table 'ContactSet'
ALTER TABLE [dbo].[ContactSet]
ADD CONSTRAINT [FK_ProjectContact]
    FOREIGN KEY ([Project_Id])
    REFERENCES [dbo].[ProjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProjectContact'
CREATE INDEX [IX_FK_ProjectContact]
ON [dbo].[ContactSet]
    ([Project_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------