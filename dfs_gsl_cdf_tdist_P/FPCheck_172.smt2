(declare-fun mu_ack!617 () (_ BitVec 64))
(declare-fun x_ack!618 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!617) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!618)
                    ((_ to_fp 11 53) x_ack!618))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!617)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!618)
                    ((_ to_fp 11 53) x_ack!618))
            ((_ to_fp 11 53) mu_ack!617))))
(assert (FPCHECK_FMUL_UNDERFLOW x_ack!618 x_ack!618))

(check-sat)
(exit)
