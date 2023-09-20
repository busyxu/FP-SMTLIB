(declare-fun y_ack!76 () (_ BitVec 64))
(declare-fun x_ack!77 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!76) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!77))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_ack!77)))
  #x3ff000008637bd06))

(check-sat)
(exit)
