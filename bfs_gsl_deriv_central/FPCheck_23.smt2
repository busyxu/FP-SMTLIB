(declare-fun h_ack!98 () (_ BitVec 64))
(declare-fun x_ack!99 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!99)
                    ((_ to_fp 11 53) h_ack!98))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (CF_pow (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!99)
                  ((_ to_fp 11 53) h_ack!98))
          #x3ff8000000000000)
  (CF_pow (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!99)
                  ((_ to_fp 11 53) h_ack!98))
          #x3ff8000000000000)))

(check-sat)
(exit)
