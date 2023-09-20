(declare-fun a_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!60)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!60) a!1)
                 ((_ to_fp 11 53) a_ack!60))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!60) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!60))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!60)
                                   a!1))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (fp.gt (fp.abs a!1) a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!60)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!60) a!1))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!60)
                         ((_ to_fp 11 53) #x4008000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!60)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!60)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (fp.eq a!3 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!60) a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!60)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!60)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (FPCHECK_FMUL_ACCURACY (fp.abs a!2) #x3cb0000000000000))))

(check-sat)
(exit)
