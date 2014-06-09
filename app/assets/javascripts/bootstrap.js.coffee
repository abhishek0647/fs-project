jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
  console.log "heloooo"
$ ->
	$('#contact-submit').on "click", (e) ->
		e.preventDefault()
		$('#contact-submit').val("Sending Mail...")
		url = '/home/contact'
		email = $('#contact-email').val()
		body = $('#contact-body').val()
		$.ajax 
			type: "POST"
			url: url
			data: { 'email': email, 'body':body}
		false