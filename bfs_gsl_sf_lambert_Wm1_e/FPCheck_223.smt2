(declare-fun a_ack!337 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!337)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!337))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!337)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!337)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!337)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!337) ((_ to_fp 11 53) #xbeb0c6f7a0b5ed8d))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
  (not (fp.eq (fp.abs (fp.add roundNearestTiesToEven a!2 a!3))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!2 a!3)
                           (CF_exp (fp.add roundNearestTiesToEven a!2 a!3)))
                   (fp.add roundNearestTiesToEven a!2 a!3))))
  (fp.eq a!4 (CF_exp (fp.add roundNearestTiesToEven a!2 a!3)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!4 (fp.eq (fp.abs (CF_exp (fp.add roundNearestTiesToEven a!2 a!3)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!4)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!2 a!3)
                           (CF_exp (fp.add roundNearestTiesToEven a!2 a!3)))
                   (CF_exp (fp.add roundNearestTiesToEven a!2 a!3)))))
  (fp.eq a!4 (fp.add roundNearestTiesToEven a!2 a!3))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
  (not (fp.gt (fp.add roundNearestTiesToEven a!2 a!3)
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337)))
                   (CF_log a!1)))
      (a!3 (fp.div roundNearestTiesToEven
                   (CF_log a!1)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!337))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!2 a!3)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!2 a!3)
                           (CF_exp (fp.add roundNearestTiesToEven a!2 a!3)))
                   ((_ to_fp 11 53) a_ack!337))))
  (FPCHECK_FMUL_OVERFLOW a!4 a!5)))))

(check-sat)
(exit)
