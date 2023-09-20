(declare-fun w0_ack!660 () (_ BitVec 64))
(declare-fun w1_ack!659 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!660) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!659) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!660))
  w1_ack!659))

(check-sat)
(exit)
