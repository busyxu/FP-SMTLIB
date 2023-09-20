(declare-fun a_ack!258 () (_ BitVec 64))
(declare-fun b_ack!257 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!258) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!258))
       (fp.abs ((_ to_fp 11 53) b_ack!257))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!258))
            (fp.abs ((_ to_fp 11 53) b_ack!257)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!257))
       ((_ to_fp 11 53) #x7fefffffffffffff)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!257))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 a!1)))

(check-sat)
(exit)
