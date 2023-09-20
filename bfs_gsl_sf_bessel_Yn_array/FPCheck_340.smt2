(declare-fun a_ack!1411 () (_ BitVec 32))
(declare-fun b_ack!1409 () (_ BitVec 32))
(declare-fun c_ack!1410 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!1411 #x00000000)))
(assert (not (bvslt b_ack!1409 a_ack!1411)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1410) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1411 #x00000000)))
(assert (not (= #x00000000 a_ack!1411)))
(assert (not (= #x00000001 a_ack!1411)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1410) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1410) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1410))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1411 a_ack!1411))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1411))
  #x400921fb54442d18))

(check-sat)
(exit)
