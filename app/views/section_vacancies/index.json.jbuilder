json.array!(@section_vacancies) do |section_vacancy|
  json.extract! section_vacancy, :id, :num_plants, :date_of_count, :vacancy, :section_id
  json.url section_vacancy_url(section_vacancy, format: :json)
end
