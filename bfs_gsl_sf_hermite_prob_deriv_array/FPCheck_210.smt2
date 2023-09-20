(declare-fun b_ack!1339 () (_ BitVec 32))
(declare-fun a_ack!1341 () (_ BitVec 32))
(declare-fun c_ack!1340 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!1339 #x00000000)))
(assert (not (bvslt a_ack!1341 #x00000000)))
(assert (not (= #x00000000 b_ack!1339)))
(assert (not (= #x00000001 b_ack!1339)))
(assert (not (= #x00000000 a_ack!1341)))
(assert (= #x00000001 a_ack!1341))
(assert (not (bvslt b_ack!1339 #x00000000)))
(assert (not (= #x00000000 b_ack!1339)))
(assert (not (= #x00000001 b_ack!1339)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1340))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!1339))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1340))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!1340))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!1339))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!1340))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1340))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_ACCURACY
  c_ack!1340
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!1340)
                  ((_ to_fp 11 53) c_ack!1340))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
