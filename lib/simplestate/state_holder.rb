class StateHolder < SimpleDelegator
  def initialize( state_history: StateHistory.new,
                  state_list: StateList.new,
                  opts: {})
    @state_history = state_history
    @state_list    = state_list
    super
  end

  def start(initial_state)
    enter_new_state(initial_state)
  end

  def transition_to(state)
    leave_old_state
    enter_new_state(state)
  end

  # Convenience methods
  def current_state
    __getobj__
  end

  def history
    state_history.list
  end

  def hx_size_limit
    state_history.hx_size_limit
  end

  private
    attr_reader :state_list, :state_history
    def leave_old_state
      current_state.__send__(:exit)
    end

    def enter_new_state(state)
      self.current_state = state
      state_history << current_state.symbol
      current_state.__send__(:enter)
    end

    def current_state=(state)
      state_obj = state_list[state]
      __setobj__(state_obj)
    end

    def add_state(state_instance)
      state_list.add state_instance
    end
end
