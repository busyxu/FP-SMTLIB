(declare-fun a_ack!53 () (_ BitVec 32))
(declare-fun b_ack!52 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!53 #x00000000)))
(assert (= #x00000000 a_ack!53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!52) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!52) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!52) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!52)
          ((_ to_fp 11 53) b_ack!52))))

(check-sat)
(exit)
