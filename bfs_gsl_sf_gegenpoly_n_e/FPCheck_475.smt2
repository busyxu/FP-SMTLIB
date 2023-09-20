(declare-fun b_ack!2417 () (_ BitVec 64))
(declare-fun a_ack!2419 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!2418 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2417) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2419 #x00000000)))
(assert (not (= #x00000000 a_ack!2419)))
(assert (not (= #x00000001 a_ack!2419)))
(assert (not (= #x00000002 a_ack!2419)))
(assert (not (= #x00000003 a_ack!2419)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!2419))
(assert (bvsle #x00000005 a_ack!2419))
(assert (bvsle #x00000006 a_ack!2419))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4018000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!2417))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2417))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2417)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2417)))
                   ((_ to_fp 11 53) c_ack!2418))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2417)
                                   a!1))
                   ((_ to_fp 11 53) c_ack!2418)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2417)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) c_ack!2418))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           ((_ to_fp 11 53) b_ack!2417))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) c_ack!2418))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2417))
                           ((_ to_fp 11 53) c_ack!2418))
                   a!4)))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!2418))
                           a!5)
                   (fp.mul roundNearestTiesToEven a!6 a!8))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4000000000000000))
    (fp.div roundNearestTiesToEven a!9 ((_ to_fp 11 53) #x4010000000000000)))))))))

(check-sat)
(exit)
