(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_initial_ack!49 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!49))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!49)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!49)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) x_initial_ack!49))))))
  (not (fp.leq a!3 a!5)))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!49))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!49)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!49)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) x_initial_ack!49))))))
  (not (fp.lt a!3 a!5)))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!49))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!49)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!49)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1))
                   a!2))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) x_initial_ack!49))))))
  (FPCHECK_FSUB_OVERFLOW a!3 a!5))))

(check-sat)
(exit)
