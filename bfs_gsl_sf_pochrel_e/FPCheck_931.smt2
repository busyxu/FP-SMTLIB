(declare-fun a_ack!2579 () (_ BitVec 64))
(declare-fun b_ack!2578 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2578))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!2579)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2578) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2579) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!2579) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2579) (CF_floor a_ack!2579))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2579) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2579)
                       ((_ to_fp 11 53) b_ack!2578))
               ((_ to_fp 11 53) a_ack!2579))
       ((_ to_fp 11 53) b_ack!2578)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2579)
                       ((_ to_fp 11 53) b_ack!2578))
               ((_ to_fp 11 53) b_ack!2578))
       ((_ to_fp 11 53) a_ack!2579)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2579)
                    ((_ to_fp 11 53) b_ack!2578))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!2579 b_ack!2578))

(check-sat)
(exit)
