(declare-fun b_ack!1004 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1004)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1004))))))
  (FPCHECK_FMUL_OVERFLOW a!1 (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1004))))))

(check-sat)
(exit)
