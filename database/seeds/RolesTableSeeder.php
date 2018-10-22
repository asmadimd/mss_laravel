<?php

use App\User;
use Illuminate\Database\Seeder;
use jeremykenedy\LaravelRoles\Models\Role;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*
         * Add Roles
         *
         */
        if (Role::where('slug', '=', 'admin')->first() === null) {
            $adminRole = Role::create([
                'name'        => 'Admin',
                'slug'        => 'admin',
                'description' => 'Admin Role',
                'level'       => 5,
            ]);
        }

        if (Role::where('slug', '=', 'lecturer')->first() === null) {
            $userRole = Role::create([
                'name'        => 'Lecturer',
                'slug'        => 'lecturer',
                'description' => 'Lecturer Role',
                'level'       => 1,
            ]);
        }
		
		if (Role::where('slug', '=', 'student')->first() === null) {
            $userRole = Role::create([
                'name'        => 'Student',
                'slug'        => 'student',
                'description' => 'User Role',
                'level'       => 1,
            ]);
        }

        if (Role::where('slug', '=', 'unverified')->first() === null) {
            $userRole = Role::create([
                'name'        => 'Unverified',
                'slug'        => 'unverified',
                'description' => 'Unverified Role',
                'level'       => 0,
            ]);
        }
    }
}
