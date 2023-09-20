(declare-fun a_ack!1172 () (_ BitVec 64))
(declare-fun b_ack!1171 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1171) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1171) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1171)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1172)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1171)
                                  ((_ to_fp 11 53) a_ack!1172))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1171)
                                  ((_ to_fp 11 53) a_ack!1172)))
                  ((_ to_fp 11 53) a_ack!1172))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) b_ack!1171))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1171)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1172)
                    ((_ to_fp 11 53) #x408f400000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1171)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1172)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1171)
                                   ((_ to_fp 11 53) a_ack!1172))
                           ((_ to_fp 11 53) a_ack!1172))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1171)
                                   ((_ to_fp 11 53) a_ack!1172))
                           ((_ to_fp 11 53) a_ack!1172)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1171)
                                   ((_ to_fp 11 53) a_ack!1172))
                           ((_ to_fp 11 53) a_ack!1172)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1172) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!1172))
  #x4038000000000000))

(check-sat)
(exit)
