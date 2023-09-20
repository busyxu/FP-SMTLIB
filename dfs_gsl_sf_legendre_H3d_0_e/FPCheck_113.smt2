(declare-fun b_ack!513 () (_ BitVec 64))
(declare-fun a_ack!514 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!514)
                                  ((_ to_fp 11 53) b_ack!513)))
                  ((_ to_fp 11 53) #x3f20000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!514)
                                   ((_ to_fp 11 53) b_ack!513)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
  (FPCHECK_FSUB_OVERFLOW (CF_floor a!1) #x7ff8000000000001)))

(check-sat)
(exit)
