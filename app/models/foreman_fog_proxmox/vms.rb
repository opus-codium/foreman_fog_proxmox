# frozen_string_literal: true

# Copyright 2018 Tristan Robert

# This file is part of ForemanFogProxmox.

# ForemanFogProxmox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# ForemanFogProxmox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with ForemanFogProxmox. If not, see <http://www.gnu.org/licenses/>.

module ForemanFogProxmox
  class Vms
    attr_reader :items

    def each
      @items.each { |item| yield item }
    end

    # TODO: Pagination with filters
    def all(_filters = {})
      items
    end

    def initialize(items = [])
      @items = items
    end
  end
end
