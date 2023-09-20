(declare-fun a_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!90))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!90))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven (CF_sin a_ack!90) ((_ to_fp 11 53) a_ack!90))
  (CF_cos a_ack!90)))

(check-sat)
(exit)
