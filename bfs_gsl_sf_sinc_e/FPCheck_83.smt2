(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!120))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!120))
            ((_ to_fp 11 53) #x4059000000000000))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.abs ((_ to_fp 11 53) a_ack!120))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f20000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.abs ((_ to_fp 11 53) a_ack!120))))))
  (FPCHECK_FSUB_ACCURACY
    (CF_floor (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3fe921fb54442d18)))
    #x7ff8000000000001)))

(check-sat)
(exit)
