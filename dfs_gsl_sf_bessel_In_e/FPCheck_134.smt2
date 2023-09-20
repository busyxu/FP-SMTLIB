(declare-fun b_ack!170 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170)))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170)))
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4012000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c4698e62107f94c)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3cc337a787764dba))
                 a!5)
         ((_ to_fp 11 53) #x3cc337a787764dba))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170)))
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4012000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c4698e62107f94c)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x3cc337a787764dba))
                 ((_ to_fp 11 53) #x3cc337a787764dba))
         a!5)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170)))
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!170))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4012000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!3)
    (fp.add roundNearestTiesToEven a!4 ((_ to_fp 11 53) #x3c4698e62107f94c))))))))

(check-sat)
(exit)
