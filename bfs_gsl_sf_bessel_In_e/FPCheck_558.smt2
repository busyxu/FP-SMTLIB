(declare-fun b_ack!877 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!877)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!877)))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!877)))
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!877)))))

(check-sat)
(exit)
