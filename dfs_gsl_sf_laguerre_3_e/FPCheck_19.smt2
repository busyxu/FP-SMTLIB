(declare-fun a_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!68 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!69) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!68)
          ((_ to_fp 11 53) b_ack!68))
  #x4018000000000000))

(check-sat)
(exit)
