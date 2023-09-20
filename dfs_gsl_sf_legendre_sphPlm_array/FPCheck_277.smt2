(declare-fun b_ack!1545 () (_ BitVec 32))
(declare-fun a_ack!1547 () (_ BitVec 32))
(declare-fun c_ack!1546 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1545 #x00000000)))
(assert (not (bvslt a_ack!1547 b_ack!1545)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1546) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1546) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1545)))
(assert (= #x00000000 b_ack!1545))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1546)
          ((_ to_fp 11 53) #x3ffbb67ae8584caa))
  #x3fd20dd750429b6d))

(check-sat)
(exit)
