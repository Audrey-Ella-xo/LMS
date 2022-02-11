module EmptyDetection
    def empty?
      attributes.all? do |k, v|
        ['id', 'user_id', 'created_at', 'updated_at'].include?(k) || v.nil? || v == [] || v == [""]
      end
    end
end
