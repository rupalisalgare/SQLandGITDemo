USE [Ref]
GO
/****** Object:  StoredProcedure [dbo].[SearchSong]    Script Date: 2/28/2018 3:15:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
*/
CREATE PROCEDURE [dbo].[SearchSong] 
     @ISRC NVARCHAR(12) = NULL
     
  AS       
BEGIN    
	SET NOCOUNT ON;      
	DECLARE   @SQL      NVARCHAR(MAX)     
	   ,@TotalCount  INT     
	BEGIN TRY        
		select * from Song
	RETURN 0;   
	END TRY    
	BEGIN CATCH    
		SELECT 
			text as ERROR
		FROM sys.messages
		WHERE message_id = @@error
		select @SQL;
		RETURN 1;   
	END CATCH    
END 
GO
