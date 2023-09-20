(declare-fun a_ack!304 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!304)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!304)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!304)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   (CF_log (CF_log a_ack!304)))))
  (fp.eq a!1 (CF_log a_ack!304))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log a_ack!304)
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304))))))
  (fp.eq a!1 (CF_log (CF_log a_ack!304)))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (CF_log a_ack!304)
               (CF_log (CF_log a_ack!304)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
  (fp.eq (fp.add roundNearestTiesToEven a!5 a!4)
         (fp.sub roundNearestTiesToEven
                 (CF_log a_ack!304)
                 (CF_log (CF_log a_ack!304)))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!5)))
  (fp.eq a!6 a!4)))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
  (fp.gt (fp.abs a!5)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.mul roundNearestTiesToEven (fp.abs a!3) a!1))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
  (not (fp.lt (fp.abs a!4)
              (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ce4000000000000)
                      (fp.abs a!5)))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
  (fp.gt a!5 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
  (not (fp.eq (fp.abs (CF_exp a!5)) ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 (CF_exp a!5))
                           ((_ to_fp 11 53) a_ack!304))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven a!6 (CF_exp a!5))
                          (CF_exp a!5))
                  a!6)))
  (not a!7))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 (CF_exp a!5))
                           ((_ to_fp 11 53) a_ack!304))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.eq (fp.abs (fp.div roundNearestTiesToEven a!6 (CF_exp a!5)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!7))))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!1)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) a_ack!304))
                           a!3)
                   a!1)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!304)
                           (CF_log (CF_log a_ack!304)))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 (CF_exp a!5))
                           ((_ to_fp 11 53) a_ack!304))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!6
                 (fp.div roundNearestTiesToEven a!6 (CF_exp a!5)))
         (CF_exp a!5))))))))

(check-sat)
(exit)
