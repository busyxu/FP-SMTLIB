(declare-fun mu_ack!593 () (_ BitVec 64))
(declare-fun x_ack!594 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!593) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!594)
                    ((_ to_fp 11 53) x_ack!594))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!593)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!594)
                    ((_ to_fp 11 53) x_ack!594))
            ((_ to_fp 11 53) mu_ack!593))))
(assert (FPCHECK_FMUL_UNDERFLOW x_ack!594 x_ack!594))

(check-sat)
(exit)
