(declare-fun x_hi_ack!76 () (_ BitVec 64))
(declare-fun x_lo_ack!77 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!77) ((_ to_fp 11 53) x_hi_ack!76))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!77)
                       ((_ to_fp 11 53) x_hi_ack!76))
               ((_ to_fp 11 53) x_lo_ack!77))
       ((_ to_fp 11 53) x_hi_ack!76)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!77)
                       ((_ to_fp 11 53) x_hi_ack!76))
               ((_ to_fp 11 53) x_hi_ack!76))
       ((_ to_fp 11 53) x_lo_ack!77)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_lo_ack!77))
          ((_ to_fp 11 53) #x0000000000000000))
  x_lo_ack!77))

(check-sat)
(exit)
