(declare-fun b_ack!193 () (_ BitVec 64))
(declare-fun a_ack!194 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!194)
               ((_ to_fp 11 53) b_ack!193))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!193))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!194))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!194)
               ((_ to_fp 11 53) b_ack!193))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!194 #x3ff0000000000000))

(check-sat)
(exit)
