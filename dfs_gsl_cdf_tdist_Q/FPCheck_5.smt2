(declare-fun mu_ack!14 () (_ BitVec 64))
(declare-fun x_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!14) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!15)
                    ((_ to_fp 11 53) x_ack!15))
            ((_ to_fp 11 53) mu_ack!14))))
(assert (FPCHECK_FMUL_ACCURACY x_ack!15 x_ack!15))

(check-sat)
(exit)
