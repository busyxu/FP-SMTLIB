(declare-fun x_hi_ack!88 () (_ BitVec 64))
(declare-fun x_lo_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!89) ((_ to_fp 11 53) x_hi_ack!88))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!89)
                       ((_ to_fp 11 53) x_hi_ack!88))
               ((_ to_fp 11 53) x_lo_ack!89))
       ((_ to_fp 11 53) x_hi_ack!88)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!89)
                       ((_ to_fp 11 53) x_hi_ack!88))
               ((_ to_fp 11 53) x_hi_ack!88))
       ((_ to_fp 11 53) x_lo_ack!89)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!89))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!89))))
  (FPCHECK_FADD_OVERFLOW a!1 #xc014000000000000)))

(check-sat)
(exit)
