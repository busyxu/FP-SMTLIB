(declare-fun a_ack!218 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!218))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!218))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!218))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!218))
            ((_ to_fp 11 53) #x4186a09e667f3bcc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!218))
       ((_ to_fp 11 53) #x7fb9999999999999)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) a_ack!218))
                          ((_ to_fp 11 53) a_ack!218))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  ((_ to_fp 11 53) a_ack!218)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) a_ack!218)))
       ((_ to_fp 11 53) a_ack!218)))

(check-sat)
(exit)
