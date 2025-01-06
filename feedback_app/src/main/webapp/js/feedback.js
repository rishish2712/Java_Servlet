<script>
        // Function to get URL parameters
        function getUrlParameters() {
            const urlParams = new URLSearchParams(window.location.search);
            return {
                name: decodeURIComponent(urlParams.get('name') || ''),
                contact: decodeURIComponent(urlParams.get('contact') || ''),
                email: decodeURIComponent(urlParams.get('email') || '')
            };
        }

        // Fill form with data from URL parameters
        window.onload = function() {
            const params = getUrlParameters();
            
            document.getElementById('name').value = params.name;
            document.getElementById('contact').value = params.contact;
            document.getElementById('email').value = params.email;
        }

        // Handle form submission
        document.getElementById('feedbackForm').addEventListener('submit', function(event) {
            event.preventDefault();
            
            var feedback = document.getElementById('feedback').value;
            
            if (feedback) {
                alert('Thank you for your feedback!');
                window.location.href = '<%= application.getContextPath()%>/index.jsp';
            } else {
                alert('Please provide your feedback');
            }
        });
    </script>