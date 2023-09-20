(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!30 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  #xc000000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff5555555555555)
                  ((_ to_fp 11 53) b_ack!30))
          ((_ to_fp 11 53) b_ack!30))))

(check-sat)
(exit)
