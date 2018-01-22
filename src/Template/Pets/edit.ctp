<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Pet $pet
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $pet->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $pet->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Pets'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="pets form large-9 medium-8 columns content">
    <?= $this->Form->create($pet) ?>
    <fieldset>
        <legend><?= __('Edit Pet') ?></legend>
        <?php
            echo $this->Form->control('name');
            echo $this->Form->control('type');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
