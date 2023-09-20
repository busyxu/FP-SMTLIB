(declare-fun a_ack!286 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!286)
                                   ((_ to_fp 11 53) a_ack!286))
                           ((_ to_fp 11 53) #x4020000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (FPCHECK_FSUB_ACCURACY a!1 #x3fe0000000000000)))

(check-sat)
(exit)
