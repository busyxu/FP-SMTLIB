(declare-fun a_ack!1432 () (_ BitVec 32))
(declare-fun b_ack!1430 () (_ BitVec 32))
(declare-fun c_ack!1431 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1432 #x00000000)))
(assert (not (bvslt b_ack!1430 a_ack!1432)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1431) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1432 #x00000000)))
(assert (not (= #x00000000 a_ack!1432)))
(assert (not (= #x00000001 a_ack!1432)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1431) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1431) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1431))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1432 a_ack!1432))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1432)))

(check-sat)
(exit)
