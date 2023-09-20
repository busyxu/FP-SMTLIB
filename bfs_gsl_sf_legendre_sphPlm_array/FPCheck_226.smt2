(declare-fun b_ack!1050 () (_ BitVec 32))
(declare-fun a_ack!1052 () (_ BitVec 32))
(declare-fun c_ack!1051 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1050 #x00000000)))
(assert (not (bvslt a_ack!1052 b_ack!1050)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1051) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1051) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1050)))
(assert (= #x00000000 b_ack!1050))
(assert (not (= a_ack!1052 b_ack!1050)))
(assert (not (= a_ack!1052 (bvadd #x00000001 b_ack!1050))))
(assert (bvsle (bvadd #x00000002 b_ack!1050) a_ack!1052))
(assert (bvsle (bvadd #x00000003 b_ack!1050) a_ack!1052))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 b_ack!1050 b_ack!1050))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1051)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x3ff870be4c1c28b2)))

(check-sat)
(exit)
