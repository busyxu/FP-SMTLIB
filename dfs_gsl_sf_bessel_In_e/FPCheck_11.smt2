(declare-fun b_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!17)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!17)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!17)))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!17)))
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!17)))))

(check-sat)
(exit)
