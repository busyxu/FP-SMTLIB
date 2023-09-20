(declare-fun a_ack!49 () (_ BitVec 32))
(declare-fun b_ack!47 () (_ BitVec 32))
(declare-fun c_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!49 #x00000000)))
(assert (not (bvslt b_ack!47 a_ack!49)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!47) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!47)))
(assert (not (= #x00000000 b_ack!47)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!47))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
