(declare-fun x_hi_ack!126 () (_ BitVec 64))
(declare-fun x_lo_ack!127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!127) ((_ to_fp 11 53) x_hi_ack!126))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!127)
                       ((_ to_fp 11 53) x_hi_ack!126))
               ((_ to_fp 11 53) x_lo_ack!127))
       ((_ to_fp 11 53) x_hi_ack!126)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!127)
                       ((_ to_fp 11 53) x_hi_ack!126))
               ((_ to_fp 11 53) x_hi_ack!126))
       ((_ to_fp 11 53) x_lo_ack!127)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!127))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!127))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or a!2 a!3)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_hi_ack!126))
          ((_ to_fp 11 53) #x0000000000000000))
  x_hi_ack!126))

(check-sat)
(exit)
