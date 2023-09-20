(declare-fun b_ack!1047 () (_ BitVec 32))
(declare-fun a_ack!1049 () (_ BitVec 32))
(declare-fun c_ack!1048 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1047 #x00000000)))
(assert (not (bvslt a_ack!1049 b_ack!1047)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1048) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1048) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1047)))
(assert (= #x00000000 b_ack!1047))
(assert (not (= a_ack!1049 b_ack!1047)))
(assert (not (= a_ack!1049 (bvadd #x00000001 b_ack!1047))))
(assert (bvsle (bvadd #x00000002 b_ack!1047) a_ack!1049))
(assert (bvsle (bvadd #x00000003 b_ack!1047) a_ack!1049))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 b_ack!1047 b_ack!1047))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1048)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d)))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x3ff870be4c1c28b2)))

(check-sat)
(exit)
