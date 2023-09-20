(declare-fun x_hi_ack!66 () (_ BitVec 64))
(declare-fun x_lo_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!67) ((_ to_fp 11 53) x_hi_ack!66))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!67)
                       ((_ to_fp 11 53) x_hi_ack!66))
               ((_ to_fp 11 53) x_lo_ack!67))
       ((_ to_fp 11 53) x_hi_ack!66)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!67)
                       ((_ to_fp 11 53) x_hi_ack!66))
               ((_ to_fp 11 53) x_hi_ack!66))
       ((_ to_fp 11 53) x_lo_ack!67)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x_lo_ack!67))
  #x0000000000000000))

(check-sat)
(exit)
