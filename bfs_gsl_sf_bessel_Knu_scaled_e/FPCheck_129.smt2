(declare-fun b_ack!329 () (_ BitVec 64))
(declare-fun a_ack!330 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!330) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!330) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!329) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!330)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!329))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!330)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!330)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!4)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!4)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!330)
                       ((_ to_fp 11 53) #x3fe0000000000000)))))
      (a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!329))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!330)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!330)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2))
                   a!3)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!4)
                 a!4)
         ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!329)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_ACCURACY #x0000000000000000 a!1)))

(check-sat)
(exit)
