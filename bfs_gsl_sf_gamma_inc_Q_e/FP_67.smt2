(declare-fun a_ack!1366 () (_ BitVec 64))
(declare-fun b_ack!1365 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1365) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1365) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1365)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1366)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1365)
                                  ((_ to_fp 11 53) a_ack!1366))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1365)
                                  ((_ to_fp 11 53) a_ack!1366)))
                  ((_ to_fp 11 53) a_ack!1366))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) b_ack!1365)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1365) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1365)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1366)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1365)
                       ((_ to_fp 11 53) a_ack!1366))
               ((_ to_fp 11 53) a_ack!1366))
       ((_ to_fp 11 53) b_ack!1365)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1365)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1365)
                       ((_ to_fp 11 53) a_ack!1366)))
       ((_ to_fp 11 53) a_ack!1366)))

(check-sat)
(exit)
