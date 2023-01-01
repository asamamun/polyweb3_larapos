<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use App\Models\profile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;

class ProfileController extends Controller
{
    /**
     * Display the user's profile form.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\View\View
     */
    public function edit(Request $request)
    {
        $userinfo = User::with('profile')->find(Auth::id());
        return view('profile.edit', [
            'user' => $userinfo,
        ]);
    }

    /**
     * Update the user's profile information.
     *
     * @param  \App\Http\Requests\ProfileUpdateRequest  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(ProfileUpdateRequest $request)
    {
        $request->user()->fill($request->validated());
        // dd($request);
        $user = User::with('profile')->find(Auth::id());
        if($user->profile){
            $path = $request->file('image')?$request->file('image')->store('profile'):null;
            // dd($path);
            $p= profile::find($user->profile->id);
            if($p->image && $path){
                Storage::delete($p->image);
            }
            $p->user_id = Auth::id();
            $p->nickname = $request->nickname;
            $p->phone = $request->phone;
            $p->address = $request->address;
            $p->blood_group = $request->blood_group;
            $p->gender = $request->gender == -1?"m":$request->gender;
            $p->image = $path;
            $p->facebook = $request->facebook;
            $p->instagram = $request->instagram;
            $p->linkdin = $request->linkdin;
            $p->twitter = $request->twitter;
            $p->fiver = $request->fiver;
            $p->upwork = $request->upwork;
            $p->save();

        }
        else{
        $p = new profile();
        $p->nickname = $request->nickname;
        $p->phone = $request->phone;
        $p->address = $request->address;
        $p->blood_group = $request->blood_group;
        $p->gender = $request->gender;
        $p->image = $request->image;
        $p->facebook = $request->facebook;
        $p->instagram = $request->instagram;
        $p->linkdin = $request->linkdin;
        $p->twitter = $request->twitter;
        $p->fiver = $request->fiver;
        $p->upwork = $request->upwork;
        $user->profile()->save($p);
        }
        return Redirect::route('profile.edit')->with('status', 'profile-updated');





       /*  if ($request->user()->isDirty('email')) {
            $request->user()->email_verified_at = null;
        }

        $request->user()->save();

        return Redirect::route('profile.edit')->with('status', 'profile-updated'); */
    }

    /**
     * Delete the user's account.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Request $request)
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current-password'],
        ]);

        $user = $request->user();

        Auth::logout();

        $user->delete();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return Redirect::to('/');
    }
}
