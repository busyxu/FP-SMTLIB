(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!45))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!45))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!45)))
                   (fp.abs ((_ to_fp 11 53) a_ack!45)))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
