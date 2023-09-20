(declare-fun b_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!11)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!11))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!11))))))

(check-sat)
(exit)
