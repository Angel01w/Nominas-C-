USE [PayrollPro]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Departamentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Ubicacion] [varchar](50) NULL,
	[Responsable_Area] [varchar](50) NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Departamentos] (Nombre, Ubicacion, Responsable_Area) VALUES
('Recursos Humanos', 'Piso 1', 'Patricia Encarnaci�n'),
('Finanzas', 'Piso 3', 'Jorge Bison�'),
('Marketing', 'Piso 3', 'Laura Paredes'),
('Ventas', 'Piso 3', 'Carlos Casals'),
('Atenci�n al Cliente', 'Piso 1', 'Paula S�nchez'),
('Tecnolog�a', 'Piso 4', 'Juan Contreras'),
('Log�stica', 'Piso 4', 'Angel Jim�nez'),
('Producci�n', 'Piso 2', 'Luis Rodr�guez'),
('Compras', 'Piso 2', 'Sof�a Hern�ndez'),
('Administraci�n', 'Piso 4', 'Miguel Santos'),
('Comunicaci�n', 'Piso 3', 'Amelia Moreno'),
('Planificaci�n', 'Piso 4', 'Jorge Ortega');

SELECT * FROM [dbo].[Departamentos]



CREATE TABLE [dbo].[Empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Id_Departamento] [int] NOT NULL,
	[Id_Puesto] [int] NOT NULL,
	[Salario] [decimal](18, 0) NULL,
	[Id_Tipo_Ingreso] [int] NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Empleados] (Cedula, Nombre, Id_Departamento, Id_Puesto, Salario, Id_Tipo_Ingreso)
VALUES
('001-1409874-9', 'Carla Matos', 1, 1, 60000, 1),
('001-1789632-5', 'Jorge Mesa', 6, 4, 55000, 1),
('402-3547895-8', 'Lia Batista', 5, 11, 38000, 1),
('402-7459815-2', 'Eduardo Gomez', 6, 12, 40000, 1),
('002-1019682-1', 'Viana Salom�n', 6, 4, 40000, 8),
('402-7804198-6', 'Camila Vargas', 3, 3, 55000, 1),
('402-3033972-3', 'Diana Moreno', 10, 10, 38000, 1),
('003-3458896-5', 'Cristian Cede�o', 12, 13, 60000, 11),
('001-1277634-4', 'Frank Encarnaci�n', 8, 8, 45000, 2);

SELECT * FROM [dbo].[Empleados]



CREATE TABLE [dbo].[Puestos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Nivel_Riesgo] [varchar](50) NOT NULL,
	[Nivel_Min_Salario] [decimal](18, 0) NULL,
	[Nivel_Max_Salario] [decimal](18, 0) NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Puestos] (Descripcion, Nivel_Riesgo, Nivel_Min_Salario, Nivel_Max_Salario)
VALUES
('Gerente General', 'Alto', 65000, 100000),
('Analista Financiero', 'Medio', 50000, 80000),
('Especialista en Marketing', 'Bajo', 40000, 70000),
('Desarrollador de Software', 'Medio', 45000, 90000),
('Ejecutivo de Ventas', 'Bajo', 40000, 68000),
('Jefe de Log�stica', 'Medio', 50000, 80000),
('Comprador', 'Bajo', 42000, 70000),
('Supervisor de Producci�n', 'Alto', 48000, 78000),
('Investigador', 'Alto', 55000, 90000),
('Asistente Administrativo', 'Bajo', 38000, 62000),
('Representante de Servicio al Cliente', 'Bajo', 35000, 60000),
('T�cnico de Mantenimiento', 'Medio', 40000, 68000),
('Especialista en Innovaci�n', 'Alto', 53000, 90000);

SELECT * FROM [dbo].[Puestos]



CREATE TABLE [dbo].[Registro Transacciones](
	[Id_Transaccion] [int] IDENTITY(1,1) NOT NULL,
	[Id_Empleado] [int] NULL,
	[Id_Ingreso] [int] NULL,
	[Tipo_Transaccion] [varchar](50) NOT NULL,
	[Fecha] [datetime] NULL,
	[Monto] [decimal](18, 0) NULL,
	[Estado] [varchar](50) NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Registro Transacciones] (Id_Empleado, Id_Ingreso, Tipo_Transaccion, Fecha, Monto, Estado)
VALUES
(1, 1, 'Salario', '2023-01-15', 60000, 'Completado'),
(2, 4, 'Salario', '2023-01-31', 55000, 'Completado'),
(3, 11, 'Salario', '2023-02-15', 38000, 'Completado'),
(4, 4, 'Salario', '2023-02-28', 40000, 'Completado'),
(5, 8, 'Salario', '2023-03-15', 40000, 'Completado'),
(6, 3, 'Salario', '2023-03-31', 55000, 'Completado'),
(7, 10, 'Salario', '2023-04-15', 38000, 'Completado'),
(8, 12, 'Salario', '2023-04-30', 60000, 'Completado'),
(9, 2, 'Salario', '2023-05-15', 45000, 'Completado'),
(2, 4, 'Bono', '2023-06-15', 4500, 'Completado'),
(3, 11, 'Bono', '2023-06-30', 3000, 'Completado'),
(4, 4, 'Bono', '2023-07-15', 3500, 'Completado'),
(5, 8, 'Bono', '2023-07-31', 3500, 'Completado'),
(6, 3, 'Bono', '2023-08-15', 4500, 'Completado'),
(7, 10, 'Bono', '2023-08-31', 3000, 'Completado'),
(9, 2, 'Bono', '2023-09-30', 3500, 'Completado'),
(1, 1, 'Comisi�n', '2023-10-15', 2000, 'Completado'),
(4, 4, 'Comisi�n', '2023-11-30', 1200, 'Completado'),
(6, 3, 'Comisi�n', '2023-12-31', 1500, 'Completado'),
(8, 12, 'Comisi�n', '2024-01-31', 2000, 'Completado'),
(9, 2, 'Comisi�n', '2024-02-15', 1200, 'Completado');

SELECT * FROM [dbo].[Registro Transacciones]



CREATE TABLE [dbo].[Tipos de deducciones](
	[Id] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[Tipo_Descuentos] [varchar](50) NULL,
	[Estado] [varchar](50) NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Tipos de deducciones] (Id, Descripcion, Tipo_Descuentos, Estado)
VALUES
(1, 'Seguro M�dico', 'Fijo', 'Activo'),
(2, 'Impuesto Sobre la Renta', 'Variable', 'Activo'),
(3, 'Aporte de Pensi�n', 'Fijo', 'Activo'),
(4, 'Seguro de Vida', 'Fijo', 'Activo'),
(5, 'Pr�stamo', 'Variable', 'Activo'),
(6, 'Cuota Sindical', 'Fijo', 'Activo'),
(7, 'Fondo de Ahorro', 'Variable', 'Inactivo'),
(8, 'Multa', 'Variable', 'Inactivo'),
(9, 'Adelanto de Sueldo', 'Variable', 'Activo'),
(10, 'Gastos M�dicos', 'Fijo', 'Activo'),
(11, 'Seguro de Autom�vil', 'Fijo', 'Activo'),
(12, 'Gastos de Viaje', 'Variable', 'Activo'),
(13, 'Gastos de Capacitaci�n', 'Variable', 'Activo');

SELECT * FROM [dbo].[Tipos de deducciones]



CREATE TABLE [dbo].[Tipos de ingreso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Tipo_Salario] [varchar](50) NULL,
	[Estado] [varchar](50) NULL
) ON [PRIMARY]
GO


INSERT INTO [dbo].[Tipos de ingreso] (Descripcion, Tipo_Salario, Estado)
VALUES
('Salario Base', 'Fijo', 'Activo'),
('Bono', 'Fijo', 'Activo'),
('Comisi�n', 'Variable', 'Activo'),
('Horas Extra', 'Fijo', 'Activo'),
('Incentivo', 'Variable', 'Activo'),
('Bono de Desempe�o', 'Variable', 'Activo'),
('Vi�ticos', 'Variable', 'Activo'),
('Pago por Proyecto', 'Variable', 'Activo'),
('Prima Vacacional', 'Fijo', 'Activo'),
('Gratificaci�n', 'Variable', 'Activo'),
('Honorarios', 'Fijo', 'Activo'),
('Pago Adicional', 'Variable', 'Activo'),
('Aguinaldo', 'Fijo', 'Activo'),
('Compensaci�n', 'Variable', 'Activo'),
('Otros Ingresos', 'Variable', 'Activo');

SELECT * FROM [dbo].[Tipos de ingreso]