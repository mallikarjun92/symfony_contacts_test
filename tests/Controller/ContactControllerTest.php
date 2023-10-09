<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ContactControllerTest extends WebTestCase
{
    public function testIndex(): void
    {
        $client = static::createClient();
        $client->request('GET', '/contact/');

        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h1', 'Contacts');
    }

    public function testNew(): void
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/contact/new');

        $this->assertResponseIsSuccessful();
        // $this->assertSelectorTextContains('h1', 'Create a new contact');
        $this->assertSelectorTextContains('h1', 'Create a new contact');

        // Submit a form with valid data
        $form = $crawler->selectButton('Create')->form();
        $form['contact[name]'] = 'John Doe';
        $form['contact[contactNumber]'] = '1234567890';
        $form['contact[address]'] = '123 Main St';

        $client->submit($form);

        $this->assertResponseRedirects('/contact/');
    }

    public function testShow(): void
    {
        $client = static::createClient();
        $client->request('GET', '/contact/1');

        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h1', 'Contact Details');
    }

    public function testEdit(): void
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/contact/1/edit');

        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h1', 'Edit Contact');

        $form = $crawler->selectButton('Update')->form();
        $form['contact[name]'] = 'Updated Name';

        $client->submit($form);

        $this->assertResponseRedirects('/contact/');
    }

    public function testDelete(): void
    {
        $client = static::createClient();
        $client->request('POST', '/contact/1');

        $this->assertResponseRedirects('/contact/');
    }
}

?>