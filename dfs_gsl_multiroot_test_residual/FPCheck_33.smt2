(declare-fun x0_ack!63 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x0_ack!63)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  x0_ack!63
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3e50000000000000)
          (fp.abs ((_ to_fp 11 53) x0_ack!63)))))

(check-sat)
(exit)
