(declare-fun x_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!31))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!31)) ((_ to_fp 11 53) #x3fe5368f08461f9f)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fb0d08ec54894e1)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!31)
                  ((_ to_fp 11 53) x_ack!31)))
  #x4001e1cbd1b4f7f3))

(check-sat)
(exit)
