(declare-fun b_ack!942 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!942)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!942)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!942)))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4048000000000000
  (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!942)))))

(check-sat)
(exit)
