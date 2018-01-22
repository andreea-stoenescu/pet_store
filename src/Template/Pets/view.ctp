<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Pet $pet
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Pet'), ['action' => 'edit', $pet->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Pet'), ['action' => 'delete', $pet->id], ['confirm' => __('Are you sure you want to delete # {0}?', $pet->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Pets'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Pet'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="pets view large-9 medium-8 columns content">
    <h3><?= h($pet->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($pet->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Type') ?></th>
            <td><?= h($pet->type) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($pet->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($pet->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($pet->modified) ?></td>
        </tr>
    </table>
</div>
