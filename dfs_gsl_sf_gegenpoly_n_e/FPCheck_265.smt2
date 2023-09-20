(declare-fun b_ack!1309 () (_ BitVec 64))
(declare-fun a_ack!1311 () (_ BitVec 32))
(declare-fun c_ack!1310 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1309) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1311 #x00000000)))
(assert (not (= #x00000000 a_ack!1311)))
(assert (not (= #x00000001 a_ack!1311)))
(assert (not (= #x00000002 a_ack!1311)))
(assert (not (= #x00000003 a_ack!1311)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1309) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1310) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1310) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1309) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1309) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!1311))
(assert (bvsle #x00000005 a_ack!1311))
(assert (bvsle #x00000006 a_ack!1311))
(assert (bvsle #x00000007 a_ack!1311))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1309)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!1309))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1309))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!1310))
                           ((_ to_fp 11 53) c_ack!1310))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1309)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1310))
                           ((_ to_fp 11 53) c_ack!1310))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1309)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) c_ack!1310))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1310)
                                   a!4))
                   (fp.mul roundNearestTiesToEven a!5 a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!1310))
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1310)
                                   a!4)))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven a!9 ((_ to_fp 11 53) #x4014000000000000)))))))

(check-sat)
(exit)
