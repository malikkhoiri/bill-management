<?php
    namespace App\Http\Controllers\API;

    use Illuminate\Http\Request; 
    use App\Http\Controllers\Controller; 
    use App\User; 
    use Illuminate\Support\Facades\Auth; 
    use Validator;

    class UserController extends Controller{
        public $successStatus = 200;
        /** 
         * login api 
         * 
         * @return \Illuminate\Http\Response 
         */ 
        public function login(){ 
            if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
                $user = Auth::user(); 
                $res['name'] = $user->name;
                $res['email'] = $user->email;
                $res['token'] =  $user->createToken('mdev')->accessToken;
                return response()->json([
                    'status' => $this->successStatus,
                    'message' => 'Success',
                    'data' => $res, 
                ], $this->successStatus); 
            } 
            else{ 
                return response()->json([
                    'status' => 401,
                    'message' => 'Failed',
                    'error'=>'Unauthorized',
                ], 401); 
            } 
        }
        /** 
         * Register api 
         * 
         * @return \Illuminate\Http\Response 
         */ 
        public function register(Request $request) 
        { 
            $validator = Validator::make($request->all(), [ 
                'name' => 'required', 
                'email' => 'required|email', 
                'password' => 'required', 
                'c_password' => 'required|same:password', 
            ]);
            if ($validator->fails()) { 
                return response()->json([
                    'status' => 401,
                    'message' => 'Failed',
                    'error'=> $validator->errors(),
                ], 401);           
            }
            $input = $request->all(); 
            $input['password'] = bcrypt($input['password']);
            $user = User::create($input); 
            $success['name'] =  $user->name;
            $success['email'] =  $user->email;
            $success['token'] =  $user->createToken('mdev')->accessToken; 
            return response()->json([
                'status' => $this->successStatus,
                'message' => 'Success',
                'data'=> $success,
            ], $this->successStatus); 
        }
        /** 
         * details api 
         * 
         * @return \Illuminate\Http\Response 
         */ 
        public function details() 
        { 
            $user = Auth::user(); 
            return response()->json([
                'status' => $this->successStatus,
                'Message' => 'Success',
                'data' => $user,
            ], $this->successStatus); 
        } 
    }
    
?>