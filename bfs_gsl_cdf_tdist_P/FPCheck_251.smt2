(declare-fun mu_ack!595 () (_ BitVec 64))
(declare-fun x_ack!596 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!595) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!596)
                    ((_ to_fp 11 53) x_ack!596))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!595)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!596)
                    ((_ to_fp 11 53) x_ack!596))
            ((_ to_fp 11 53) mu_ack!595))))
(assert (FPCHECK_FMUL_ACCURACY x_ack!596 x_ack!596))

(check-sat)
(exit)
