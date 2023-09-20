(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_initial_ack!175 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!175)
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
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
  (fp.leq a!3 a!5))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!175)
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
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
  (not (fp.lt a!3 a!5)))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!175)
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
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
(let ((a!6 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!3 a!5))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!6)))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!175)
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
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
(let ((a!6 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!3 a!5))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fc4da3b15800000) a!6)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175)))
                   ((_ to_fp 11 53) #xbfdbd32e04800000))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3feffbc4d1000000)
                 ((_ to_fp 11 53) x_initial_ack!175)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!175)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbfdbd32e04800000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!175))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp a!2)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
  (fp.leq a!3 a!6)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!175))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp a!2)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
  (not (fp.lt a!3 a!6))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!175))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp a!2)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
(let ((a!7 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!3 a!6))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!175))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (CF_exp a!2)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
(let ((a!7 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!3 a!6))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fee4f78a4c00000) a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!175))))))
  (FPCHECK_FSUB_OVERFLOW
    #x8000000000000000
    (CF_pow (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))
            #x4000000000000000))))

(check-sat)
(exit)
