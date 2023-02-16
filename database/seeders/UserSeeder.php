<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\User;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Factories\Sequence;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       
       // $user = factory(class:User::class,amount: 10)->make()->toArray();
       $users = User::factory()->count(3)->make();

      // $user = User::factory()->create();

      

        /*$user = User::create([
            'name' => Str::random(15),
            'sobrenome' => Str::random(20),
            'telefone' => Str::random(15),
            'tipo' => 'Usuario',
            'email' => Str::random(10).'@gmail.com',
            'password' => Hash::make('12345678'),

        ]);*/
/*
        $user->historics()->create([
         
            'busca' => 'nirvana',
          
        ]);*/
    }
}
