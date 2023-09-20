(declare-fun b_ack!213 () (_ BitVec 64))
(declare-fun a_ack!214 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!213) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!213) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!213)
                       ((_ to_fp 11 53) a_ack!214)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!213) ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!213)
                       ((_ to_fp 11 53) a_ack!214)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4034000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4034000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4034000000000000))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4034000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!1)
         (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!213)
                         ((_ to_fp 11 53) a_ack!214)))))))
(assert (let ((a!1 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
  (fp.geq (fp.abs a!1) ((_ to_fp 11 53) #x0010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!213)
                                   ((_ to_fp 11 53) a_ack!214))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4028000000000000))))))
  (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 a!4)))))

(check-sat)
(exit)
