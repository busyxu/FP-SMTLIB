(declare-fun a_ack!547 () (_ BitVec 32))
(declare-fun b_ack!546 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!547 #x00000000)))
(assert (not (= #x00000000 a_ack!547)))
(assert (not (= #x00000001 a_ack!547)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!546) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!546) ((_ to_fp 11 53) #x4014000000000000)))
(assert (FPCHECK_FINVALID_LOG
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!546))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!546))))

(check-sat)
(exit)
