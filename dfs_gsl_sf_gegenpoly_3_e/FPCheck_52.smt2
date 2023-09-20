(declare-fun a_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!190 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!191) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff5555555555555)
          ((_ to_fp 11 53) b_ack!190))
  b_ack!190))

(check-sat)
(exit)
