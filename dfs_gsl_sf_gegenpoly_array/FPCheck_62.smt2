(declare-fun b_ack!285 () (_ BitVec 64))
(declare-fun a_ack!286 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!285) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!286 #x00000000)))
(assert (not (= #x00000000 a_ack!286)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!285) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!286))
(assert (bvsle #x00000003 a_ack!286))
(assert (FPCHECK_FADD_ACCURACY
  #x4008000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!285))))

(check-sat)
(exit)
