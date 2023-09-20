(declare-fun b_ack!146 () (_ BitVec 64))
(declare-fun a_ack!147 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!146) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!147 #x00000000)))
(assert (not (= #x00000000 a_ack!147)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000002 a_ack!147))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!146)))
  #x4000000000000000))

(check-sat)
(exit)
