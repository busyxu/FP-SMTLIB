(declare-fun a_ack!1438 () (_ BitVec 32))
(declare-fun b_ack!1436 () (_ BitVec 32))
(declare-fun c_ack!1437 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1438 #x00000000)))
(assert (not (bvslt b_ack!1436 a_ack!1438)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1437) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1438 #x00000000)))
(assert (not (= #x00000000 a_ack!1438)))
(assert (not (= #x00000001 a_ack!1438)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1437) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1437) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1437))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1438 a_ack!1438))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1438)))

(check-sat)
(exit)
