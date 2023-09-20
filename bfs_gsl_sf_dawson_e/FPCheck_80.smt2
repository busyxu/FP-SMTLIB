(declare-fun a_ack!104 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!104))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!104))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!104))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!104))
       ((_ to_fp 11 53) #x4186a09e667f3bcc)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!104))
                           (fp.abs ((_ to_fp 11 53) a_ack!104))))))
  (FPCHECK_FSUB_OVERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
