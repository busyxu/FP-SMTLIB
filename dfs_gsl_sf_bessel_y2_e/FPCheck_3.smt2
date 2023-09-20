(declare-fun a_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!7))
            ((_ to_fp 11 53) #x3f20000000000000))))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!7)))
        ((_ to_fp 11 53) #x7fe921fb54442d17)))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) a_ack!7))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #x7fdfffffffffffff)))

(check-sat)
(exit)
