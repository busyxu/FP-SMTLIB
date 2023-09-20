(declare-fun w0_ack!2376 () (_ BitVec 64))
(declare-fun w1_ack!2373 () (_ BitVec 64))
(declare-fun w2_ack!2374 () (_ BitVec 64))
(declare-fun w3_ack!2375 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2376) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!2373) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!2374) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!2375) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2376) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!2373) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!2374) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!2375) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2376)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2376)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
  (FPCHECK_FDIV_UNDERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    ((_ to_fp 11 53) w0_ack!2376))
            (fp.add roundNearestTiesToEven a!2 a!4)))))))

(check-sat)
(exit)
