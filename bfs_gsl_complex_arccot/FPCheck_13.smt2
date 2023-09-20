(declare-fun x_ack!43 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y_ack!42 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!43) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!42)
                  ((_ to_fp 11 53) #x7fc0000000000000)))
  #x7fc0000000000000))

(check-sat)
(exit)
