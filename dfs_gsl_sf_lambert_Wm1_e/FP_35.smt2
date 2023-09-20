(declare-fun a_ack!293 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.gt ((_ to_fp 11 53) a_ack!293) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!293)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!293))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!293)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!293)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!293) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!293)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!293)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!293)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!293) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!293) ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       (CF_log a_ack!293)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               (CF_log a_ack!293))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       (CF_log a_ack!293)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       (CF_log a_ack!293)))
(assert (not (fp.gt (CF_log a_ack!293) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!293)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  (CF_log a_ack!293)
                                  (fp.div roundNearestTiesToEven a!1 a!3)))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          a!4))))
  (not a!5)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!293)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!1 a!3))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ce4000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!4)))))
  (not a!5)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.gt (fp.sub roundNearestTiesToEven
                 (CF_log a_ack!293)
                 (fp.div roundNearestTiesToEven a!1 a!3))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!4 (fp.abs (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (fp.div roundNearestTiesToEven a!1 a!3))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) a_ack!293))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
  (not (fp.eq a!7 a!5)))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (fp.div roundNearestTiesToEven a!1 a!3))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) a_ack!293))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
  (not (fp.eq (fp.abs a!6) ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (fp.div roundNearestTiesToEven a!1 a!3))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) a_ack!293))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
  (fp.eq (fp.div roundNearestTiesToEven a!5 a!6)
         (CF_exp (fp.sub roundNearestTiesToEven
                         (CF_log a_ack!293)
                         (fp.div roundNearestTiesToEven a!1 a!3))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (fp.div roundNearestTiesToEven a!1 a!3))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) a_ack!293))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           a!6)
                   a!6)))
  (fp.eq a!7
         (fp.sub roundNearestTiesToEven
                 (CF_log a_ack!293)
                 (fp.div roundNearestTiesToEven a!1 a!3))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (CF_exp (CF_log a_ack!293)))
                   ((_ to_fp 11 53) a_ack!293)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_exp (CF_log a_ack!293))
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!2 a!1)
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (fp.div roundNearestTiesToEven a!1 a!3))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) a_ack!293))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!293)
                           (fp.div roundNearestTiesToEven a!1 a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!293)
                                   (fp.div roundNearestTiesToEven a!1 a!3))
                           a!6))))
  (fp.eq a!7 a!6))))))))

(check-sat)
(exit)
