(declare-fun a_ack!1408 () (_ BitVec 32))
(declare-fun b_ack!1406 () (_ BitVec 32))
(declare-fun c_ack!1407 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1408 #x00000000)))
(assert (not (bvslt b_ack!1406 a_ack!1408)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1408 #x00000000)))
(assert (not (= #x00000000 a_ack!1408)))
(assert (not (= #x00000001 a_ack!1408)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1407) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1407))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1408 a_ack!1408))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1408))
  #x400921fb54442d18))

(check-sat)
(exit)
