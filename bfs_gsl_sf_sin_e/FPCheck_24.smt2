(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!53))
            ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) a_ack!53))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x7ff8000000000001)))

(check-sat)
(exit)
