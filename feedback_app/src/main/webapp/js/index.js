<script>
        function handleSubmit(event) {
            event.preventDefault();
			
            
            // Get form values
            var name = document.getElementById("name").value;
            var contact = document.getElementById("contact").value;
            var email = document.getElementById("email").value;
            
            // Basic validation
            if (name && contact && email) {
                // Pass data through URL parameters
                window.location.href = `<%= application.getContextPath()%>/feedback.jsp?name=${encodeURIComponent(name)}&contact=${encodeURIComponent(contact)}&email=${encodeURIComponent(email)}`;
            } else {
                alert("Please fill in all fields");
            }
        }
    </script>