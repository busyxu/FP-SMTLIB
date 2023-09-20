(declare-fun a_ack!2975 () (_ BitVec 64))
(declare-fun b_ack!2974 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2974))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!2975)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2974) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2975) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2975)
               ((_ to_fp 11 53) b_ack!2974))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2974))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2975))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2975) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2975)
               ((_ to_fp 11 53) b_ack!2974))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2975) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2975) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!2975)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!2975 #x4000000000000000))

(check-sat)
(exit)
