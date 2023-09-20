(declare-fun a_ack!1370 () (_ BitVec 64))
(declare-fun b_ack!1369 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1369)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1370)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1369)
                                  ((_ to_fp 11 53) a_ack!1370))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1369)
                                  ((_ to_fp 11 53) a_ack!1370)))
                  ((_ to_fp 11 53) a_ack!1370))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) b_ack!1369)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1369) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1370) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1369)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1370)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1369)
                       ((_ to_fp 11 53) a_ack!1370))
               ((_ to_fp 11 53) a_ack!1370))
       ((_ to_fp 11 53) b_ack!1369)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1369)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1369)
                       ((_ to_fp 11 53) a_ack!1370)))
       ((_ to_fp 11 53) a_ack!1370)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1369)
          ((_ to_fp 11 53) a_ack!1370))
  a_ack!1370))

(check-sat)
(exit)
