(declare-fun a_ack!276 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!276)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!276)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!276)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       (CF_log a_ack!276)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               (CF_log a_ack!276))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       (CF_log a_ack!276)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       (CF_log a_ack!276)))
(assert (fp.gt (CF_log a_ack!276) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2)
                 a!2)
         (CF_log a_ack!276)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (CF_log a_ack!276)
                 (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2))
         a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2))
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!3)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ce4000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!3
                 ((_ to_fp 11 53) #x3ce4000000000000))
         (fp.abs (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.abs (fp.abs (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ce4000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   a!3
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)))))
  (fp.eq a!4 ((_ to_fp 11 53) #x3ce4000000000000)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ce4000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)))))
  (not (fp.lt (fp.abs a!2) a!3))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!3 (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
  (fp.gt (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2)
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!276)
                           (CF_exp (CF_log a_ack!276)))
                   ((_ to_fp 11 53) a_ack!276))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!276)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   (CF_log a_ack!276)
                                   a!2)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.sub roundNearestTiesToEven a!3 ((_ to_fp 11 53) a_ack!276))
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven (CF_log a_ack!276) a!2)
            ((_ to_fp 11 53) #x3ff0000000000000)))))))

(check-sat)
(exit)
