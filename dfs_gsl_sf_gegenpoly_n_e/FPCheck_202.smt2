(declare-fun b_ack!1039 () (_ BitVec 64))
(declare-fun a_ack!1041 () (_ BitVec 32))
(declare-fun c_ack!1040 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1041 #x00000000)))
(assert (not (= #x00000000 a_ack!1041)))
(assert (not (= #x00000001 a_ack!1041)))
(assert (not (= #x00000002 a_ack!1041)))
(assert (not (= #x00000003 a_ack!1041)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1040) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1040) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!1041))
(assert (bvsle #x00000005 a_ack!1041))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!1039))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1039))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!1040))
                           ((_ to_fp 11 53) c_ack!1040))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1039)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1040))
                           ((_ to_fp 11 53) c_ack!1040))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1039)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!1040))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1040)
                                   a!3))
                   (fp.mul roundNearestTiesToEven a!4 a!5))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!1040))
            (fp.div roundNearestTiesToEven
                    a!6
                    ((_ to_fp 11 53) #x4010000000000000)))
    (fp.mul roundNearestTiesToEven
            a!7
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!1040) a!3))))))

(check-sat)
(exit)
