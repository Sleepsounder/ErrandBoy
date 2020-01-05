# frozen_string_literal: true

require 'rails_helper'

describe 'POST /tasks', type: :request do
  subject do
    post '/tasks', params: params
  end

  let(:params) do
    { task: {
      title: title,
      description: description
    } }
  end
  let(:title) { 'Do some stuff.' }
  let(:description) { 'A description of the stuff to be done.' }

  context 'with no title' do
    let(:title) { nil }

    it 'returns a 422' do
      expect(subject).to eq(422)
    end
  end

  context "with valid params" do
      it 'returns a 200' do
        expect(subject).to eq(200)
    end
  end

  #     it "creates a rating with the correct params" do
  #       expect { subject }.to change(Rating, :count).by(1)
  #       expect(created_rating.rater_id).to eq(params[:rater_id])
  #       expect(created_rating.rated_id).to eq(params[:rated_id])
  #       expect(created_rating.order_id).to eq(params[:order_id])
  #       expect(created_rating.score).to eq(params[:score])
  #       expect(created_rating.review).to eq(params[:review])
  #     end
  #   end
end
