(declare-fun w0_ack!968 () (_ BitVec 64))
(declare-fun w1_ack!965 () (_ BitVec 64))
(declare-fun w2_ack!966 () (_ BitVec 64))
(declare-fun w3_ack!967 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!968) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!965) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!968)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!968)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!965)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!968))
                           ((_ to_fp 11 53) w1_ack!965)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x409ef00000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           a!3)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!1))))
  (fp.eq a!4 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!968)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!968)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!965)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!968))
                           ((_ to_fp 11 53) w1_ack!965)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x409ef00000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   a!2)))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           a!3)
                   a!3)))
  (fp.eq a!4
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x0000000000000000)
                 a!1))))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!966) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!967) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!968) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  w0_ack!968
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!968))))

(check-sat)
(exit)
