(declare-fun a_ack!2587 () (_ BitVec 64))
(declare-fun b_ack!2586 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2586))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!2587)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2586) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!2587) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2587) (CF_floor a_ack!2587))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2587) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2587)
                       ((_ to_fp 11 53) b_ack!2586))
               ((_ to_fp 11 53) a_ack!2587))
       ((_ to_fp 11 53) b_ack!2586)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2587)
                       ((_ to_fp 11 53) b_ack!2586))
               ((_ to_fp 11 53) b_ack!2586))
       ((_ to_fp 11 53) a_ack!2587)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2587)
                    ((_ to_fp 11 53) b_ack!2586))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2587)
          ((_ to_fp 11 53) b_ack!2586))
  #x3ff0000000000000))

(check-sat)
(exit)
