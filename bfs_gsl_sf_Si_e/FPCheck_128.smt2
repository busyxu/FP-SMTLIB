(declare-fun a_ack!163 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!163))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!163))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!163))
             ((_ to_fp 11 53) #x401c48c6001f1ea6))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!163))
        ((_ to_fp 11 53) #x4190000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4059000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!163))
                           (fp.abs ((_ to_fp 11 53) a_ack!163))))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
