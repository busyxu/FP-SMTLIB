(declare-fun b_ack!1040 () (_ BitVec 64))
(declare-fun a_ack!1042 () (_ BitVec 32))
(declare-fun c_ack!1041 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1040) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1042 #x00000000)))
(assert (not (= #x00000000 a_ack!1042)))
(assert (not (= #x00000001 a_ack!1042)))
(assert (not (= #x00000002 a_ack!1042)))
(assert (not (= #x00000003 a_ack!1042)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1040) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1041) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1040) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #xbff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!1041))
          ((_ to_fp 11 53) c_ack!1041))))

(check-sat)
(exit)
