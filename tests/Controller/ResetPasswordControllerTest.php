<?php
namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mime\Email;

class ResetPasswordControllerTest extends WebTestCase
{
    public function testRequestPage()
    {
        $client = static::createClient();
        $client->request('GET', '/reset-password');
        
        $this->assertResponseIsSuccessful();
    }
    
    public function testCheckEmailPage()
    {
        $client = static::createClient();
        $client->request('GET', '/reset-password/check-email');
        
        $this->assertResponseIsSuccessful();
    }
    
    public function testResetPasswordPage()
    {
        $client = static::createClient();
        
        // put token from a test email
        $token = 'pRLUHuKm6xp2YLUPqaJonX4J3NC4TpOT5bW52wAD';
        
        $client->request('GET', "/reset-password/reset/$token");
        
//         $this->assertResponseIsSuccessful();
        $this->assertResponseRedirects('/reset-password/reset');
        
    }
    
    public function testRequestFormSubmission()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/reset-password');
        
        $form = $crawler->selectButton('Send password reset email')->form();
        $form['reset_password_request_form[email]'] = 'testuser@example.com';
        
        $client->submit($form);
        
        $this->assertResponseRedirects('/reset-password/check-email', Response::HTTP_FOUND);
    }
    
    public function testResetPasswordFormSubmission()
    {
        $client = static::createClient();
        
        // Enable following redirects
        $client->followRedirects(); 
        
        //put token from the test email
        $token = 'qttJzhVl8pF3tj1rJvtc2gEkF0Okeyx6yj2ndMCJ';
        
        // Replace 'TOKEN_HERE' with a valid token
        $client->request('GET', "/reset-password/reset/$token");
        
        $form = $client->getCrawler()->selectButton('Reset password')->form();
        $form['change_password_form[plainPassword][first]'] = 'newpassword';
        $form['change_password_form[plainPassword][second]'] = 'newpassword';
        
        $client->submit($form);
                
        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h1', 'Please sign in');
//         $this->assertResponseRedirects('/login');
        
    }
    
    public function testCheckEmailPageWithInvalidToken()
    {
        $client = static::createClient();
        $client->request('GET', '/reset-password/check-email');
        
        $this->assertResponseIsSuccessful();
    }
}

