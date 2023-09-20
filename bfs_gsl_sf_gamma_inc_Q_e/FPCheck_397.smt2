(declare-fun a_ack!1118 () (_ BitVec 64))
(declare-fun b_ack!1117 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1118) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1118) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1117)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1118)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1118) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1117)
                                  ((_ to_fp 11 53) a_ack!1118))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1117)
                                  ((_ to_fp 11 53) a_ack!1118)))
                  ((_ to_fp 11 53) a_ack!1118))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1118) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1118) ((_ to_fp 11 53) b_ack!1117))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1117)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1118)
                    ((_ to_fp 11 53) #x408f400000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1118) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1117)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1118)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1117)
                                   ((_ to_fp 11 53) a_ack!1118))
                           ((_ to_fp 11 53) a_ack!1118))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1117)
                                   ((_ to_fp 11 53) a_ack!1118))
                           ((_ to_fp 11 53) a_ack!1118)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1117)
                                   ((_ to_fp 11 53) a_ack!1118))
                           ((_ to_fp 11 53) a_ack!1118))
                   ((_ to_fp 11 53) #xbfb999999999999a))))
  (FPCHECK_FADD_OVERFLOW #x3fbc71c71c71c71c a!1)))

(check-sat)
(exit)
