(declare-fun c_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!74 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  a_ack!74
  (CF_floor (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!74)
                    ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)
