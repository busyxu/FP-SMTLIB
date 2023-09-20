(declare-fun mu_ack!591 () (_ BitVec 64))
(declare-fun x_ack!592 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!591) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!592)
                    ((_ to_fp 11 53) x_ack!592))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!591)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!592)
                    ((_ to_fp 11 53) x_ack!592))
            ((_ to_fp 11 53) mu_ack!591))))
(assert (FPCHECK_FMUL_OVERFLOW x_ack!592 x_ack!592))

(check-sat)
(exit)
