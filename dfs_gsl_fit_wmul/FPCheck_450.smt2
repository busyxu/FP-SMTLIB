(declare-fun w0_ack!2476 () (_ BitVec 64))
(declare-fun w1_ack!2473 () (_ BitVec 64))
(declare-fun w2_ack!2474 () (_ BitVec 64))
(declare-fun w3_ack!2475 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!2473) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!2475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!2473) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!2475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!2476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w0_ack!2476)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w0_ack!2476)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4028000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1))))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x409ec80000000000)
                                   a!1)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!2)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!4)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
  (FPCHECK_FSUB_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!3 a!5)
                    (fp.add roundNearestTiesToEven a!6 a!7))
            a!4))))))

(check-sat)
(exit)
