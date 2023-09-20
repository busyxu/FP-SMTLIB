(declare-fun a_ack!1378 () (_ BitVec 64))
(declare-fun b_ack!1377 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1377)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1378)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1378) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1377)
                                  ((_ to_fp 11 53) a_ack!1378))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1377)
                                  ((_ to_fp 11 53) a_ack!1378)))
                  ((_ to_fp 11 53) a_ack!1378))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1378) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!1378) ((_ to_fp 11 53) b_ack!1377)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1377) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1378) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1377)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1378)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1377)
                       ((_ to_fp 11 53) a_ack!1378))
               ((_ to_fp 11 53) a_ack!1378))
       ((_ to_fp 11 53) b_ack!1377)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1377)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1377)
                       ((_ to_fp 11 53) a_ack!1378)))
       ((_ to_fp 11 53) a_ack!1378)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1377)
          ((_ to_fp 11 53) a_ack!1378))
  a_ack!1378))

(check-sat)
(exit)
