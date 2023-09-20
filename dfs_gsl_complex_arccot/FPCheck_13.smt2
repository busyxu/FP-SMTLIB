(declare-fun x_ack!41 () (_ BitVec 64))
(declare-fun y_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!41) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!40) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!40)
                  ((_ to_fp 11 53) #x7ff0000000000001)))
  #x7ff0000000000001))

(check-sat)
(exit)
