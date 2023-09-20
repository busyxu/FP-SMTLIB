(declare-fun a_ack!39 () (_ BitVec 32))
(declare-fun b_ack!38 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!39 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!38) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!38) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!38) ((_ to_fp 11 53) #x3f30000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!39)
  #x3ff0000000000000))

(check-sat)
(exit)
