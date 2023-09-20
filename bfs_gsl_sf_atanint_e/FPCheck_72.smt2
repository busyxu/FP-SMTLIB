(declare-fun a_ack!101 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!101))
            ((_ to_fp 11 53) #x3e40000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!101))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!101))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff921fb54442d18)
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!101))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.abs ((_ to_fp 11 53) a_ack!101))))))

(check-sat)
(exit)
