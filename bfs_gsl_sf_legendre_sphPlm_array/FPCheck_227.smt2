(declare-fun b_ack!1056 () (_ BitVec 32))
(declare-fun a_ack!1058 () (_ BitVec 32))
(declare-fun c_ack!1057 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1056 #x00000000)))
(assert (not (bvslt a_ack!1058 b_ack!1056)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1057) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1057) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1056)))
(assert (= #x00000000 b_ack!1056))
(assert (not (= a_ack!1058 b_ack!1056)))
(assert (not (= a_ack!1058 (bvadd #x00000001 b_ack!1056))))
(assert (bvsle (bvadd #x00000002 b_ack!1056) a_ack!1058))
(assert (bvsle (bvadd #x00000003 b_ack!1056) a_ack!1058))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 b_ack!1056 b_ack!1056))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1057)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d)))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3ff870be4c1c28b2)))

(check-sat)
(exit)
