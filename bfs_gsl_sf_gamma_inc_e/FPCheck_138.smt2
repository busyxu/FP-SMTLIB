(declare-fun b_ack!470 () (_ BitVec 64))
(declare-fun a_ack!471 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!471) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!471) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!470) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!471))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!471)
               (CF_floor a_ack!471))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!471)
                    (CF_floor a_ack!471))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!471)
                    (CF_floor a_ack!471))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!470)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!471)
                        (CF_floor a_ack!471)))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!471)
               (CF_floor a_ack!471))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!471)
          (CF_floor a_ack!471))
  #x3ff0000000000000))

(check-sat)
(exit)
