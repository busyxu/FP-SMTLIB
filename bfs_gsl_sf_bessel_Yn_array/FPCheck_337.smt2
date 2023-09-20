(declare-fun a_ack!1396 () (_ BitVec 32))
(declare-fun b_ack!1394 () (_ BitVec 32))
(declare-fun c_ack!1395 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1396 #x00000000)))
(assert (not (bvslt b_ack!1394 a_ack!1396)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1396 #x00000000)))
(assert (not (= #x00000000 a_ack!1396)))
(assert (not (= #x00000001 a_ack!1396)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1395) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1395))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1396 a_ack!1396))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #xbfe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1396)))

(check-sat)
(exit)
