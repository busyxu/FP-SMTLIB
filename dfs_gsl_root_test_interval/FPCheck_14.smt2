(declare-fun x_hi_ack!60 () (_ BitVec 64))
(declare-fun x_lo_ack!61 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!61) ((_ to_fp 11 53) x_hi_ack!60))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!61)
                       ((_ to_fp 11 53) x_hi_ack!60))
               ((_ to_fp 11 53) x_lo_ack!61))
       ((_ to_fp 11 53) x_hi_ack!60)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!61)
                       ((_ to_fp 11 53) x_hi_ack!60))
               ((_ to_fp 11 53) x_hi_ack!60))
       ((_ to_fp 11 53) x_lo_ack!61)))
(assert (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 x_lo_ack!61))

(check-sat)
(exit)
