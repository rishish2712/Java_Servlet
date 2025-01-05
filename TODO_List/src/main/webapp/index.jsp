<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="<%= application.getContextPath() %>/css/index.css"/>
    <title>TODO List</title>
</head>
<body>
    <div id="LIST">
        <h1>
            TODO LIST
        </h1>
        <h4>
            Enter the List of Work you do Today
        </h4>
        <input 
            name="work" 
            id="workInput" 
            class="work" 
            type="text" 
            placeholder="Enter the work You want to do" 
            maxlength="50" 
            minlength="3"
            onkeypress="if(event.key === 'Enter') addWork()"
        >
        <br>
        <button type="submit" class="submit" onclick="addWork()">Add Task</button>
        <br><br>
        <textarea id="work" readonly></textarea>
    </div>
    <script>
        function addWork() {
            const input = document.getElementById('workInput');
            const textarea = document.getElementById('work');
            
            if (input.value.trim() !== '') {
                textarea.value += ' -> ' + input.value + '\n';
                input.value = ''; // Clear the input after adding
            }
        }
    </script>
</body>
</html>