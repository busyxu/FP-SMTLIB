(declare-fun a_ack!74 () (_ BitVec 64))
(declare-fun b_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!73) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  b_ack!73
  (CF_floor (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!73)
                    ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)
