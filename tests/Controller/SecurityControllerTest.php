<?php
namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class SecurityControllerTest extends WebTestCase
{
    public function testLogin()
    {
        $client = static::createClient();
        $client->request('GET', '/login');
        
        $this->assertResponseIsSuccessful();
    }
    
    public function testLoginWithValidCredentials()
    {
        $client = static::createClient();
        $client->request('GET', '/login');
        
        $crawler = $client->submitForm('Sign in', [
            'username' => 'admin3',
            'password' => '123456',
        ]);
        
        $this->assertResponseRedirects('/contact/'); // Change this to the URL you expect after login
    }
    
    public function testLoginWithInvalidCredentials()
    {
        $client = static::createClient();
        $client->request('GET', '/login');
        
        $crawler = $client->submitForm('Sign in', [
            'username' => 'admin',
            'password' => 'qwquywqy',
        ]);
        
        $this->assertResponseRedirects('/login'); // Change this to the URL you expect after a failed login
    }
    
    public function testLogout()
    {
        $client = static::createClient();
        $client->request('GET', '/logout');
        
        // Assert whatever you expect to happen when a user logs out
        $this->assertTrue(true);
    }
}
