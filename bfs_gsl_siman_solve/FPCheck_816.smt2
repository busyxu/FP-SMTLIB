(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_initial_ack!1277 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!1277)
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
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
  (fp.leq a!3 a!5))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!1277)
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
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
  (not (fp.lt a!3 a!5)))))
(assert (let ((a!1 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!1277)
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
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
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
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!2 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_initial_ack!1277)
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
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
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
                                   ((_ to_fp 11 53) x_initial_ack!1277)))
                   ((_ to_fp 11 53) #xbfdbd32e04800000))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3feffbc4d1000000)
                 ((_ to_fp 11 53) x_initial_ack!1277)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!1277)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbfdbd32e04800000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!1277))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
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
                           ((_ to_fp 11 53) x_initial_ack!1277))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
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
                           ((_ to_fp 11 53) x_initial_ack!1277))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
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
                           ((_ to_fp 11 53) x_initial_ack!1277))))
      (a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
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
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!1277)))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
  (fp.leq a!4 a!6)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!1277)))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
  (not (fp.lt a!4 a!6))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!1277)))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
(let ((a!7 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!4 a!6))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfdbd32e04800000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!1277)))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
(let ((a!7 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!6))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fdf09cec5400000) a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
  (fp.leq a!4 a!6)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
  (not (fp.lt a!4 a!6))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
(let ((a!7 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!4 a!6))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!1)))))
(let ((a!7 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!6))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fe7d15970600000) a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!2 #x4000000000000000)))
                   (CF_sin a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6)))
  (fp.leq a!4 a!7)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!2 #x4000000000000000)))
                   (CF_sin a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6)))
  (not (fp.lt a!4 a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!2 #x4000000000000000)))
                   (CF_sin a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6)))
(let ((a!8 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!4 a!7))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!8))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!2 #x4000000000000000)))
                   (CF_sin a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6)))
(let ((a!8 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fe7adb1e0000000) a!8))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!5 #x4000000000000000)))
                   (CF_sin a!6))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp a!3)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
  (fp.leq a!4 a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!5 #x4000000000000000)))
                   (CF_sin a!6))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp a!3)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
  (not (fp.lt a!4 a!7)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!5 #x4000000000000000)))
                   (CF_sin a!6))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp a!3)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
(let ((a!8 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!4 a!7))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!5 #x4000000000000000)))
                   (CF_sin a!6))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp a!3)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
(let ((a!8 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fe5138d17e00000) a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp a!6)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
  (fp.leq a!5 a!7))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp a!6)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
  (not (fp.lt a!5 a!7)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp a!6)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
(let ((a!8 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!5 a!7))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!4 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp a!6)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2)))))
(let ((a!8 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!5 a!7))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fe9bdab64200000) a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!7 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!3 #x4000000000000000)))
                   (CF_sin a!4)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   a!7)))
  (fp.leq a!5 a!8))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!7 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!3 #x4000000000000000)))
                   (CF_sin a!4)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   a!7)))
  (not (fp.lt a!5 a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!7 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!3 #x4000000000000000)))
                   (CF_sin a!4)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   a!7)))
(let ((a!9 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!5 a!8))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!9)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!7 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!3 #x4000000000000000)))
                   (CF_sin a!4)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!6))
                   a!7)))
(let ((a!9 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!5 a!8))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fc593c7f7800000) a!9)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!6 #x4000000000000000)))
                   (CF_sin a!7))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
  (fp.leq a!5 a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!6 #x4000000000000000)))
                   (CF_sin a!7))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
  (not (fp.lt a!5 a!8))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!6 #x4000000000000000)))
                   (CF_sin a!7))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
(let ((a!9 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!5 a!8))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!6 #x4000000000000000)))
                   (CF_sin a!7))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (CF_exp a!4)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
(let ((a!9 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!5 a!8))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fd91bac27800000) a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp a!7)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
  (fp.leq a!6 a!8)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp a!7)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
  (not (fp.lt a!6 a!8))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp a!7)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
(let ((a!9 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  (fp.sub roundNearestTiesToEven a!6 a!8))
                          ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!5 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4))
                   a!5))
      (a!8 (fp.mul roundNearestTiesToEven
                   (CF_exp a!7)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!3)))))
(let ((a!9 (CF_exp (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!6 a!8))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fcb49d330800000) a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!8 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!4 #x4000000000000000)))
                   (CF_sin a!5)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   a!8)))
  (fp.leq a!6 a!9)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!8 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!4 #x4000000000000000)))
                   (CF_sin a!5)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   a!8)))
  (not (fp.lt a!6 a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!8 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!4 #x4000000000000000)))
                   (CF_sin a!5)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   a!8)))
(let ((a!10 (fp.lt (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!6 a!9))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                   ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!10))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!8 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!4 #x4000000000000000)))
                   (CF_sin a!5)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7))
                   a!8)))
(let ((a!10 (CF_exp (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.sub roundNearestTiesToEven a!6 a!9))
                            ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fd558b502800000) a!10))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!7 #x4000000000000000)))
                   (CF_sin a!8))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
  (fp.leq a!6 a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!7 #x4000000000000000)))
                   (CF_sin a!8))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
  (not (fp.lt a!6 a!9)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!7 #x4000000000000000)))
                   (CF_sin a!8))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
(let ((a!10 (fp.lt (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (fp.sub roundNearestTiesToEven a!6 a!9))
                           ((_ to_fp 11 53) #x3f80624dd2f1a9fc))
                   ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!10)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_pow a!7 #x4000000000000000)))
                   (CF_sin a!8))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (CF_exp a!5)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
(let ((a!10 (CF_exp (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    (fp.sub roundNearestTiesToEven a!6 a!9))
                            ((_ to_fp 11 53) #x3f80624dd2f1a9fc)))))
  (fp.lt ((_ to_fp 11 53) #x3fee32ed88c00000) a!10)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc47666fa000000)
                                   a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc47666fa000000)
                                   a!4))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp a!8)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
  (fp.leq a!7 a!9))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc47666fa000000)
                                   a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc47666fa000000)
                                   a!4))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp a!8)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
  (not (fp.lt a!7 a!9)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe12c8a09400000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdbd32e04800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffbc4d1000000)
                                   ((_ to_fp 11 53) x_initial_ack!1277))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0a2eb50000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb4809a36000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fed474d6dc00000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa90ebc00000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa424ed4c000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd7992fb9000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe39310b3000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfee0efcee800000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe1d03255400000)
                                   a!3)))))
(let ((a!5 (CF_pow (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc47666fa000000)
                                   a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   #x4000000000000000))
      (a!6 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc47666fa000000)
                                   a!4))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_pow (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           #x4000000000000000))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5))
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   (CF_exp a!8)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!4)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            (fp.sub roundNearestTiesToEven a!7 a!9))
    #x3f80624dd2f1a9fc))))))))

(check-sat)
(exit)
