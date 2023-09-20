(declare-fun a_ack!22 () (_ BitVec 32))
(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!22 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!22))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x400921fb54442d18
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!21))))

(check-sat)
(exit)
