(declare-fun b_ack!2439 () (_ BitVec 64))
(declare-fun a_ack!2441 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!2440 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2441 #x00000000)))
(assert (not (= #x00000000 a_ack!2441)))
(assert (not (= #x00000001 a_ack!2441)))
(assert (not (= #x00000002 a_ack!2441)))
(assert (not (= #x00000003 a_ack!2441)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!2441))
(assert (bvsle #x00000005 a_ack!2441))
(assert (bvsle #x00000006 a_ack!2441))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!2439))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!2439))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2439))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!2439))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2439)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2439)))
                   ((_ to_fp 11 53) c_ack!2440)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2439)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2439)
                                   a!4))
                   ((_ to_fp 11 53) c_ack!2440)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2439)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) c_ack!2440))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           ((_ to_fp 11 53) b_ack!2439))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) c_ack!2440))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2439))
                           ((_ to_fp 11 53) c_ack!2440))
                   a!6)))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!2440))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!8 a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!2440))
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) c_ack!2440))
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4010000000000000))))))
  (FPCHECK_FDIV_OVERFLOW a!14 #x4018000000000000)))))))))

(check-sat)
(exit)
