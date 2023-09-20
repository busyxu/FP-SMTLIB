(declare-fun h_ack!94 () (_ BitVec 64))
(declare-fun x_ack!95 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!95)
                    ((_ to_fp 11 53) h_ack!94))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (CF_pow (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!95)
                  ((_ to_fp 11 53) h_ack!94))
          #x3ff8000000000000)
  (CF_pow (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!95)
                  ((_ to_fp 11 53) h_ack!94))
          #x3ff8000000000000)))

(check-sat)
(exit)
