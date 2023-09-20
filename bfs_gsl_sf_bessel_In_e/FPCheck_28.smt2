(declare-fun b_ack!55 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!55)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!55))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!55)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!55))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!55)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!55)))
                   a!4)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!55)))
                   a!2))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!55))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   (fp.abs a!5))))
  (FPCHECK_FADD_ACCURACY a!3 a!6)))))

(check-sat)
(exit)
