(declare-fun x_hi_ack!72 () (_ BitVec 64))
(declare-fun x_lo_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!73) ((_ to_fp 11 53) x_hi_ack!72))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!73)
                       ((_ to_fp 11 53) x_hi_ack!72))
               ((_ to_fp 11 53) x_lo_ack!73))
       ((_ to_fp 11 53) x_hi_ack!72)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!73)
                       ((_ to_fp 11 53) x_hi_ack!72))
               ((_ to_fp 11 53) x_hi_ack!72))
       ((_ to_fp 11 53) x_lo_ack!73)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x_lo_ack!73))
  #x0000000000000000))

(check-sat)
(exit)
