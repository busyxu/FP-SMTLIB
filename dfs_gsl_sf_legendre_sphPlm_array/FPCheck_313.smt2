(declare-fun b_ack!1680 () (_ BitVec 32))
(declare-fun a_ack!1682 () (_ BitVec 32))
(declare-fun c_ack!1681 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1680 #x00000000)))
(assert (not (bvslt a_ack!1682 b_ack!1680)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1681) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1681) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1680)))
(assert (= #x00000000 b_ack!1680))
(assert (not (= a_ack!1682 b_ack!1680)))
(assert (not (= a_ack!1682 (bvadd #x00000001 b_ack!1680))))
(assert (bvsle (bvadd #x00000002 b_ack!1680) a_ack!1682))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1681)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1681)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d)))))
  (FPCHECK_FMUL_ACCURACY a!1 #x400efbdeb14f4eda)))

(check-sat)
(exit)
