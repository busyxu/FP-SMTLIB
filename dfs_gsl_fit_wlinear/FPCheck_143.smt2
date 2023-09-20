(declare-fun w0_ack!492 () (_ BitVec 64))
(declare-fun w1_ack!489 () (_ BitVec 64))
(declare-fun w2_ack!490 () (_ BitVec 64))
(declare-fun w3_ack!491 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!492) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!489) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!492)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!492)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!489)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!492))
                           ((_ to_fp 11 53) w1_ack!489)))))
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
                           ((_ to_fp 11 53) w0_ack!492)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!492)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!489)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!492))
                           ((_ to_fp 11 53) w1_ack!489)))))
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
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!490) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!491) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!492) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW #x0000000000000000 w0_ack!492))

(check-sat)
(exit)
