(declare-fun c_ack!1316 () (_ BitVec 64))
(declare-fun b_ack!1315 () (_ BitVec 32))
(declare-fun a_ack!1317 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1316) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!1317 b_ack!1315)))
(assert (not (= #x00000000 b_ack!1315)))
(assert (not (= #x00000000 a_ack!1317)))
(assert (not (bvslt b_ack!1315 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1316) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1316) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!1317 #x00000000)))
(assert (not (bvslt a_ack!1317 #x00000000)))
(assert (not (= a_ack!1317 b_ack!1315)))
(assert (not (= #x00000001 a_ack!1317)))
(assert (not (= b_ack!1315 (bvadd #x00000001 a_ack!1317))))
(assert (not (= a_ack!1317 (bvadd #x00000001 b_ack!1315))))
(assert (not (= a_ack!1317 (bvadd #x00000002 b_ack!1315))))
(assert (not (= b_ack!1315 (bvmul #x00000002 a_ack!1317))))
(assert (bvslt b_ack!1315 #x0000000a))
(assert (bvslt a_ack!1317 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1316))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1315)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1317)
                          (fp.abs ((_ to_fp 11 53) c_ack!1316))))))
  (not a!1)))
(assert (not (bvslt a_ack!1317 b_ack!1315)))
(assert (not (bvslt a_ack!1317 b_ack!1315)))
(assert (not (bvslt a_ack!1317 b_ack!1315)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1316) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1317)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1315)
                        ((_ to_fp 11 53) c_ack!1316)))))
(assert (bvslt b_ack!1315 (bvadd #xffffffff a_ack!1317)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1316)
          ((_ to_fp 11 53) #xbff0000000000000))
  (CF_exp c_ack!1316)))

(check-sat)
(exit)
