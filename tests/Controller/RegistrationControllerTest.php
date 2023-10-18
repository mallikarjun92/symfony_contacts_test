<?php
namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class RegistrationControllerTest extends WebTestCase
{
    public function testRegisterPageIsSuccessful()
    {
        $client = static::createClient();
        $client->request('GET', '/register');
        
        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h1', 'Register');
    }
    
    public function testRegisterFormSubmission()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/register');
        
        $form = $crawler->selectButton('Register')->form();
        // Fill in the form fields with your test data
        $form['registration_form[username]'] = 'testuser';
        $form['registration_form[email]'] = 'testuser@example.com';
        $form['registration_form[plainPassword]'] = 'testpassword';
        
        $client->submit($form);
        
//         $this->assertResponseRedirects('/register'); 
        $this->assertSelectorTextContains('h1', 'Register');// Redirects to the registration page after form submission
    }
    
    public function testVerifyEmailPageIsSuccessful()
    {
        $client = static::createClient();
        $client->request('GET', '/verify/email');
        
//         $this->assertResponseIsSuccessful('/register');
        $this->assertResponseRedirects('/register'); 
    }
}

