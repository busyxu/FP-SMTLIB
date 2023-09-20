(declare-fun x_hi_ack!84 () (_ BitVec 64))
(declare-fun x_lo_ack!85 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!85) ((_ to_fp 11 53) x_hi_ack!84))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!85)
                       ((_ to_fp 11 53) x_hi_ack!84))
               ((_ to_fp 11 53) x_lo_ack!85))
       ((_ to_fp 11 53) x_hi_ack!84)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!85)
                       ((_ to_fp 11 53) x_hi_ack!84))
               ((_ to_fp 11 53) x_hi_ack!84))
       ((_ to_fp 11 53) x_lo_ack!85)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_lo_ack!85))
          ((_ to_fp 11 53) #x0000000000000000))
  x_lo_ack!85))

(check-sat)
(exit)
