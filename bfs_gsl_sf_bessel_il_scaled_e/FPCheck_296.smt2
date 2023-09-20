(declare-fun b_ack!1092 () (_ BitVec 64))
(declare-fun a_ack!1093 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1092) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1093 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1092) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1093)))
(assert (not (= #x00000001 a_ack!1093)))
(assert (= #x00000002 a_ack!1093))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1092) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1092))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1092))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  #x4008000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1092)
          ((_ to_fp 11 53) b_ack!1092))))

(check-sat)
(exit)
