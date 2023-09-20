(declare-fun x_hi_ack!70 () (_ BitVec 64))
(declare-fun x_lo_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!71) ((_ to_fp 11 53) x_hi_ack!70))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!71)
                       ((_ to_fp 11 53) x_hi_ack!70))
               ((_ to_fp 11 53) x_lo_ack!71))
       ((_ to_fp 11 53) x_hi_ack!70)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!71)
                       ((_ to_fp 11 53) x_hi_ack!70))
               ((_ to_fp 11 53) x_hi_ack!70))
       ((_ to_fp 11 53) x_lo_ack!71)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x_lo_ack!71))
  #x0000000000000000))

(check-sat)
(exit)
