<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class ResetController extends Controller
{
    public function reset_password(Request $request) 
    {
		$request->validate([
			'email' => 'required|string|email|max:191',
		], [
			'email.required' => _lang('The email field is required.'),
		]);

        $user = User::where('email', $request->email)->first();

		// If email does not exist
        if(!$user) {
            return response()->json([
                'result' => false,
                'status_code' => 404,
                'user_id' => 0,
                'user_email' => '',
                'error' => 'Email does not exist.'
            ], 404);
        } else {
            // If email exists
            return response()->json([
                'result' => true,
                'status_code' => 200,
                'user' => $user,
                'user_id' => $user->id,
                'user_email' => $request->email,
                'message' => 'Email exist'
            ], 200);            
        }

	}

    public function change_password(Request $request)
    {
        $password = $request->password;
        $password_confirmation = $request->password_confirmation;
        $user_email = $request->user_email;

        if ($password != $password_confirmation) {
            return response()->json([
                'result' => false,
                'status_code' => 500,
                'message' => "Password doesn't match"
            ]);
        } else {
            $password = Hash::make($request->password);
            
            $user       = User::where('email', $user_email)->first();
            $user->password = $password;

            $user->save();

            return response()->json([
                'result' => true,
                'status_code' => 200,
                'message' => "Password has been updated!"
            ]);
        }
    }
}
