# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { described_class.new(title: 'Task #1') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  context 'Task has valid attributes' do
    it 'persists' do
      expect { subject.save.to change { Task.count }.by(1) }
    end

    it 'deletes' do
      expect { subject.destroy.to change { Task.count }.by(1) }
    end
  end
end
