(declare-fun x_ack!58 () (_ BitVec 64))
(declare-fun y_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!58))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!57)))
                   ((_ to_fp 11 53) #x3ff00000218def1e))))
  (fp.leq a!1 ((_ to_fp 11 53) #x3fe488ce703afb7f))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbff0000000000000)
                       ((_ to_fp 11 53) y_ack!57)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) y_ack!57)))
  #x3ff0000000000000))

(check-sat)
(exit)
