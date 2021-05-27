<?php
	require __DIR__ .'/lib/Twilio/autoload.php';
	use \lib\Twilio\Rest\Client;
	// Your Account SID and Auth Token from twilio.com/console
	$account_sid = 'ACdc79d670f6cfc7639dfa83eb43d0110d';
	$auth_token = 'cda91e78db19acc985304026ca4ba749';
	// In production, these should be environment variables. E.g.:
	// $auth_token = $_ENV["TWILIO_ACCOUNT_SID"]
	// A Twilio number you own with SMS capabilities
	$twilio_number = "+13614002258";
	try {
		$client = new Client($account_sid, $auth_token);
		$client->messages->create(
			// Where to send a text message (your cell phone?)
			'+917276102722',
			array(
			    'from' => $twilio_number,
			    'body' => 'I sent this message in under 10 minutes!'
			)
		);
	} catch (Exception $e) {
		var_dump($e);
	}
	die();

	/*echo md5('Admin@123');*/
		/*$apiKey = urlencode('NDM4Yjc4ODJhYmMzN2JhYzFmMzFkZDMzM2FjOWRlZDE=');

        // Message details
        $numbers = array(917276102722);
        $sender = urlencode('600010');
        $message = rawurlencode('Your Order is Successfully Booked!');

        $numbers = implode(',', $numbers);

        // Prepare data for POST request
        $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);

        // Send the POST request with cURL
        $ch = curl_init('https://api.textlocal.in/send/');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        curl_close($ch);

		// Process your response here
		echo $response;*/

		/*$username = 'novamedpharama2021';
		$password = 'Novamed@123';
		$messages = array(
			array('to'=>'+917020798948', 'body'=>'Order is Placed!','routingGroup'=>'PREMIUM')
		);  

		$result = send_message( json_encode($messages), 'https://api.bulksms.com/v1/messages?auto-unicode=true&longMessageMaxParts=30', $username, $password );

		if ($result['http_status'] != 201) {
		print "Error sending: " . ($result['error'] ? $result['error'] : "HTTP status ".$result['http_status']."; Response was " .$result['server_response']);
		} else {
		print "Response " . $result['server_response'];
		// Use json_decode($result['server_response']) to work with the response further
		}

		function send_message ( $post_body, $url, $username, $password) {
			$ch = curl_init( );
			$headers = array(
			'Content-Type:application/json',
			'Authorization:Basic '. base64_encode("$username:$password")
			);
			curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
			curl_setopt ( $ch, CURLOPT_URL, $url );
			curl_setopt ( $ch, CURLOPT_POST, 1 );
			curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
			curl_setopt ( $ch, CURLOPT_POSTFIELDS, $post_body );
			// Allow cUrl functions 20 seconds to execute
			curl_setopt ( $ch, CURLOPT_TIMEOUT, 20 );
			// Wait 10 seconds while trying to connect
			curl_setopt ( $ch, CURLOPT_CONNECTTIMEOUT, 10 );
			$output = array();
			$output['server_response'] = curl_exec( $ch );
			$curl_info = curl_getinfo( $ch );
			$output['http_status'] = $curl_info[ 'http_code' ];
			$output['error'] = curl_error($ch);
			curl_close( $ch );
			return $output;
		}*/

?>