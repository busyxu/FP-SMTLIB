(declare-fun a_ack!1480 () (_ BitVec 32))
(declare-fun b_ack!1478 () (_ BitVec 32))
(declare-fun c_ack!1479 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1480 #x00000000)))
(assert (not (bvslt b_ack!1478 a_ack!1480)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1480 #x00000000)))
(assert (not (= #x00000000 a_ack!1480)))
(assert (not (= #x00000001 a_ack!1480)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1479) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1479))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1480 a_ack!1480))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1480))
                   ((_ to_fp 11 53) c_ack!1479))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
