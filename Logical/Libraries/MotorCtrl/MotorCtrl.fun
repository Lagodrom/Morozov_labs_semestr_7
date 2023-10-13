
{REDUND_ERROR} FUNCTION_BLOCK FB_Motor (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*������� ����������, �*)
	END_VAR
	VAR_OUTPUT
		phi : REAL; (*���������, ���*)
		w : REAL; (*������� ����������, ��/���*)
	END_VAR
	VAR
		dt : REAL := 0.003; (*��� �������, �*)
		ke : REAL; (*���������� ��� ���������, �*���/��*)
		Tm : REAL := 0.03; (*������������������� ���������� �������, �*)
		integrator : FB_Integrator; (*����������*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_Regulator (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : REAL; (*��������������� ����� �������� ������������ � �������� ��������� �������� ���� ���, ��/���*)
	END_VAR
	VAR_OUTPUT
		u : REAL; (*����������, ���������� �� ���� ���, �*)
	END_VAR
	VAR
		a : REAL;
		b : REAL;
		last_sum : REAL;
		sum : REAL;
		k_p : REAL := 0.0064; (*���������������� ����������� ����������*)
		k_i : REAL := 0.16; (*������������ ����������� ����������*)
		integrator : FB_Integrator; (*����������*)
		iyOld : REAL; (*�������� ����������� �������� ����� �����������������*)
		limited_sum : REAL;
		max_abs_value : REAL := 24; (*������� ����� �����������, �*)
		dt : REAL := 0.003; (*��� �������, �*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_Integrator (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL; (*����� �������������� �����*)
	END_VAR
	VAR_OUTPUT
		out : REAL; (*���� �������������� �����*)
	END_VAR
	VAR
		dt : REAL := 0.003; (*��� �������, �*)
		prev_value : REAL; (*���������� ���������*)
	END_VAR
END_FUNCTION_BLOCK
