(declare-fun x_hi_ack!48 () (_ BitVec 64))
(declare-fun x_lo_ack!49 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!49) ((_ to_fp 11 53) x_hi_ack!48))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!49)
                       ((_ to_fp 11 53) x_hi_ack!48))
               ((_ to_fp 11 53) x_lo_ack!49))
       ((_ to_fp 11 53) x_hi_ack!48)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!49)
                       ((_ to_fp 11 53) x_hi_ack!48))
               ((_ to_fp 11 53) x_hi_ack!48))
       ((_ to_fp 11 53) x_lo_ack!49)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x_lo_ack!49)
          ((_ to_fp 11 53) x_hi_ack!48))))

(check-sat)
(exit)
