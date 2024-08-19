<html>

<head>
	<title>Upload File : SourceBans</title>
	<link rel="Shortcut Icon" href="../images/favicon.ico" />
</head>

<body style="background-color: #000000;
background-repeat: repeat-x;
">

	<div style="display: flex; 
padding: 1rem; 
margin-bottom: 2rem; 
justify-content: space-between; 
align-items: center; 
border-radius: 0.5rem; 
font-size: 1.25rem;
line-height: 1.75rem; 
font-weight: 600; 
color: #EDE9FE; 
background-color: #7C3AED; 
box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);">
		{$title}
	</div>

	<div style="margin-bottom: 1rem; 
font-size: 1.125rem;
line-height: 1.75rem; 
font-weight: 600; 
color: #9CA3AF; ">
		Plese select the file to upload. The file must either be {$formats} file format.
	</div>
	<br>

	<b>{$message}</b>
	<form action="" method="POST" id="{$form_name}" enctype="multipart/form-data">
		<input name="upload" value="1" type="hidden">
		<input name="{$input_name}" size="25" class="submit-fields" type="file" style="font-size: 0.75rem;
line-height: 1rem; 
color: #9CA3AF;">
		<br>
		<button style="display: block; 
padding-top: 0.5rem;
padding-bottom: 0.5rem; 
padding-left: 1rem;
padding-right: 1rem; 
margin-top: 1rem; 
border-radius: 0.5rem; 
border-width: 1px; 
border-color: transparent; 
font-size: 0.875rem;
line-height: 1.25rem; 
font-weight: 500; 
line-height: 1.25rem; 
text-align: center; 
color: #ffffff; 
background-color: #7C3AED; 
transition-property: color, background-color, border-color, text-decoration-color, fill, stroke;
transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
transition-duration: 300ms; 
transition-duration: 150ms; " type="submit">
			<i class="fas fa-save"></i> Save
		</button>

	</form>
	<script type="text/javascript" src="../scripts/fontawesome-all.min.js"></script>
</body>

</html>