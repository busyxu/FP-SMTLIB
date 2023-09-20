(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!9)
                     ((_ to_fp 11 53) a_ack!9))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY a_ack!9 a_ack!9))

(check-sat)
(exit)
