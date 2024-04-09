<?php
/* The ContactController class in PHP handles sending emails from contact forms by validating the
request data and sending an email using the provided information. */

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;
use Dotenv\Exception\ValidationException;
use Illuminate\Http\JsonResponse;

/**
 * ContactController handles the operations related to sending emails from contact forms.
 * This includes validating the request data and sending an email using the provided information.
 */
class ContactController extends Controller
{
    /**
     * Handles sending an email based on the request data from a contact form.
     * Validates the incoming request data to ensure all necessary fields are provided and properly formatted.
     * After validation, prepares the data and sends an email to the Handpickd email.
     *
     * @param Request $request The incoming request containing contact form data.
     * @return JsonResponse Returns a JSON response indicating the success of the email operation.
     * @throws ValidationException If the request data does not pass validation checks.
     */
    public function sendEmail(Request $request): JsonResponse
    {
        // Validate the request data
        $validatedData = $request->validate([
            'first-name' => 'required',
            'last-name'  => 'required',
            'email'      => 'required|email',
            'message'    => 'required',
        ]);

        // Prepare the data for the email
        $data = [
            'firstName' => $validatedData['first-name'],
            'lastName'  => $validatedData['last-name'],
            'email'     => $validatedData['email'],
            'message'   => $validatedData['message'],
        ];

        // Send the email
        Mail::to('handpickd.shop@gmail.com')->send(new ContactMail($data));

        // Redirect back or to a 'thank you' page with a success message
        return response()->json(['message' => 'Email sent successfully']);
    }
}
