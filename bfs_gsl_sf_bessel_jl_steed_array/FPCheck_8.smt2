(declare-fun a_ack!41 () (_ BitVec 32))
(declare-fun b_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!41 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!40) ((_ to_fp 11 53) #x3f30000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!41)
  #x3ff0000000000000))

(check-sat)
(exit)
