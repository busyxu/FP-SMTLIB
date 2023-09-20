(declare-fun a_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!78)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!78))
                           ((_ to_fp 11 53) a_ack!78))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!78)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!78)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) a_ack!78))
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!78) a!1)
                 ((_ to_fp 11 53) #x4008000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!78))
                           ((_ to_fp 11 53) a_ack!78))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!78)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!78)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!78)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq a!3 ((_ to_fp 11 53) a_ack!78))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!78))
                   ((_ to_fp 11 53) a_ack!78))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!78)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!78)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!78) a!2)
    (fp.div roundNearestTiesToEven a!3 ((_ to_fp 11 53) #x4014000000000000))))))

(check-sat)
(exit)
