USE [master]
GO
/****** Object:  Database [Clientes]    Script Date: 29/05/2022 11:18:14 a. m. ******/
CREATE DATABASE [Clientes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Clientes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Clientes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Clientes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Clientes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Clientes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clientes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clientes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clientes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clientes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clientes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clientes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clientes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Clientes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clientes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clientes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clientes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clientes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clientes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clientes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clientes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clientes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Clientes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clientes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clientes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clientes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clientes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clientes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clientes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clientes] SET RECOVERY FULL 
GO
ALTER DATABASE [Clientes] SET  MULTI_USER 
GO
ALTER DATABASE [Clientes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clientes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Clientes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Clientes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Clientes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Clientes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Clientes', N'ON'
GO
ALTER DATABASE [Clientes] SET QUERY_STORE = OFF
GO
USE [Clientes]
GO
/****** Object:  Table [dbo].[Ajustes]    Script Date: 29/05/2022 11:18:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ajustes](
	[AjusteId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NULL,
	[MontoTotal] [decimal](18, 0) NULL,
	[Adeudo] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Ajustes] PRIMARY KEY CLUSTERED 
(
	[AjusteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 29/05/2022 11:18:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Telefono] [nchar](15) NOT NULL,
	[Correo] [nchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[MontoSolicitud] [nchar](50) NOT NULL,
	[Estatus] [nchar](20) NOT NULL,
	[Aprobacion] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 29/05/2022 11:18:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[PagoId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NULL,
	[MontoPagado] [decimal](18, 0) NULL,
	[Aplicado] [int] NULL,
	[FechaPago] [datetime] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[PagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Clientes] SET  READ_WRITE 
GO
