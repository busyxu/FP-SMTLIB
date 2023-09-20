(declare-fun b_ack!868 () (_ BitVec 64))
(declare-fun a_ack!870 () (_ BitVec 32))
(declare-fun c_ack!869 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!868) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!870 #x00000000)))
(assert (not (= #x00000000 a_ack!870)))
(assert (not (= #x00000001 a_ack!870)))
(assert (not (= #x00000002 a_ack!870)))
(assert (not (= #x00000003 a_ack!870)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!868) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!869) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!869) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!868) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!868) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!870))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!868))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!869))
                           ((_ to_fp 11 53) c_ack!869))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!868)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!869))
                           ((_ to_fp 11 53) c_ack!869)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!869))
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) c_ack!869) a!2))
    (fp.mul roundNearestTiesToEven a!3 a!4))))

(check-sat)
(exit)
